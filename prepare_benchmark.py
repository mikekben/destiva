#!/usr/bin/env python3
"""Compile each benchmark's C source and split into per-function .ll files.

Usage:
    python prepare_benchmark.py <benchmarks_dir>

benchmarks_dir must contain:
    bzip2.c
    gzip.c
    oggenc.c
    ph7/ph7.c
    sqlite/sqlite3.c
    fiat/<variant>.c  (any number; discovered dynamically)

Steps, per benchmark:
  1. Compile source.c to LLVM IR with clang -O0 (stripping optnone afterwards)
  2. Extract each defined function into its own .ll file using llvm-extract
  3. Categorize the extracted functions into tiny/loops/acyclic lists

Output: <benchmarks_dir>/funcs/<name>/<function>.ll
"""

import argparse
import os
import re
import subprocess
from pathlib import Path

CLANG        = os.environ.get("CLANG", "/root/destiva/llvm-project/build/bin/clang")
LLVM_EXTRACT = os.environ.get("LLVM_EXTRACT", "/root/destiva/llvm-project/build/bin/llvm-extract")

DEFINE_RE = re.compile(r'^define\b.*@([\w.]+)\s*\(')

# (name, source path relative to benchmarks_dir) for every benchmark whose IR
# is produced by compiling a single .c file.
BENCHMARKS = [
    ("bzip2", "bzip2.c"),
    ("gzip", "gzip.c"),
    ("oggenc", "oggenc.c"),
    ("ph7", "ph7/ph7.c"),
    ("sqlite3", "sqlite/sqlite3.c"),
]


def fiat_benchmarks(bench_dir: Path) -> list[tuple[str, str]]:
    """fiat-crypto generates one .c file per field/curve/word-size variant
    rather than a single source file, so its entries are discovered
    dynamically instead of hardcoded. Each variant is processed the same way
    as any other single-file benchmark, with its own name/output dir;
    functions that are identical across variants are not deduplicated."""
    fiat_dir = bench_dir / "fiat"
    return [
        (f"fiat_{c.stem}", c.relative_to(bench_dir).as_posix())
        for c in sorted(fiat_dir.glob("*.c"))
    ]


# --- categorize_funcs.py, folded in as a function ---

LABEL_RE = re.compile(r'^([\w.]+):')
BR_TARGET_RE = re.compile(r'\blabel\s+%([\w.]+)')


def classify(ll_file: Path) -> str:
    """Classify a single-function .ll file as 'tiny', 'loops', or 'acyclic'."""
    text = ll_file.read_text()
    lines = text.splitlines()

    # Collect instructions and basic block structure from within the function body.
    in_func = False
    bb_order = []       # basic block labels in order of appearance
    current_bb = None
    instrs = 0
    branches = []       # (source_bb_index, target_label) for each br/switch

    for line in lines:
        stripped = line.strip()

        if not in_func:
            if stripped.startswith('define '):
                in_func = True
                current_bb = '__entry__'
                bb_order.append(current_bb)
            continue

        if stripped == '}':
            break

        # New basic block label
        m = LABEL_RE.match(stripped)
        if m:
            current_bb = m.group(1)
            bb_order.append(current_bb)
            continue

        # Skip empty lines and comments
        if not stripped or stripped.startswith(';'):
            continue

        instrs += 1

        # Collect branch targets
        if stripped.startswith('br ') or stripped.startswith('switch '):
            for target in BR_TARGET_RE.findall(stripped):
                branches.append((len(bb_order) - 1, target))

    if instrs <= 3:
        return 'tiny'

    # Detect back edges: branch to a BB that appears earlier in bb_order
    bb_index = {name: i for i, name in enumerate(bb_order)}
    for src_idx, target in branches:
        tgt_idx = bb_index.get(target)
        if tgt_idx is not None and tgt_idx <= src_idx:
            return 'loops'

    return 'acyclic'


def categorize_funcs(funcs_dir: Path, subdir: str | None = None):
    """Categorize IR files into tiny, loops, and acyclic.

    If subdir is given (e.g. 'fiat_curve25519_32'), categorizes files in
    <funcs_dir>/<subdir>/ and appends results (prefixed with <subdir>/) to
    the existing category files. Otherwise categorizes files directly in
    <funcs_dir>/ and overwrites them.
    """
    scan_dir = funcs_dir / subdir if subdir else funcs_dir
    categories = {'tiny': [], 'loops': [], 'acyclic': []}

    for ll_file in sorted(scan_dir.glob('*.ll')):
        cat = classify(ll_file)
        name = f'{subdir}/{ll_file.name}' if subdir else ll_file.name
        categories[cat].append(name)

    for cat, files in categories.items():
        out = funcs_dir / f'{cat}.txt'
        if subdir:
            existing = out.read_text() if out.exists() else ''
            out.write_text(existing.rstrip('\n') + '\n' + '\n'.join(files) + '\n')
        else:
            out.write_text('\n'.join(files) + '\n')
        print(f'{cat}: {len(files)}')


# --- end categorize_funcs.py ---


def compile_to_ll(source: Path, out_ll: Path):
    """Compile C source to unoptimized LLVM IR, then strip optnone."""
    print(f"Compiling {source} -> {out_ll}")
    subprocess.run(
        [CLANG, "-O0", "-emit-llvm", "-S", "-o", str(out_ll), str(source)],
        check=True,
    )
    # Strip optnone from attribute group lines only, to avoid corrupting string literals
    lines = out_ll.read_text().splitlines(keepends=True)
    stripped = []
    for line in lines:
        if line.startswith("attributes #") and "optnone" in line:
            line = re.sub(r'\boptnone\b\s*', '', line)
        stripped.append(line)
    out_ll.write_text("".join(stripped))


def get_defined_functions(ll_file: Path) -> list[str]:
    """Return names of all defined (non-declare) functions in the module."""
    funcs = []
    for line in ll_file.read_text().splitlines():
        m = DEFINE_RE.match(line)
        if m:
            funcs.append(m.group(1))
    return funcs


def extract_function(module_ll: Path, func_name: str, out_ll: Path):
    """Use llvm-extract to pull out a single function with all dependencies as declarations."""
    subprocess.run(
        [LLVM_EXTRACT, f"--func={func_name}", "-S", str(module_ll), "-o", str(out_ll)],
        check=True,
        capture_output=True,
    )


def prepare_one(source: Path, name: str, bench_dir: Path, funcs_dir: Path):
    out_dir = funcs_dir / name
    out_dir.mkdir(parents=True, exist_ok=True)

    # Step 1: compile to .ll in bench_dir
    module_ll = bench_dir / f"{name}.ll"
    compile_to_ll(source, module_ll)

    # Step 2: extract each function
    funcs = get_defined_functions(module_ll)
    print(f"Found {len(funcs)} functions in {module_ll}")

    failed = []
    for i, func in enumerate(funcs, 1):
        out_ll = out_dir / f"{func}.ll"
        print(f"  [{i}/{len(funcs)}] Extracting {func}")
        try:
            extract_function(module_ll, func, out_ll)
        except subprocess.CalledProcessError as e:
            print(f"    WARNING: llvm-extract failed for {func}: {e.stderr.decode()[:200]}")
            failed.append(func)
            continue

    # Step 3: update category lists
    print(f"\nCategorizing {name}...")
    categorize_funcs(funcs_dir, name)

    print(f"\nDone. {len(funcs) - len(failed)} functions extracted to {out_dir}")
    if failed:
        print(f"Failed: {failed}")


def main():
    parser = argparse.ArgumentParser(description="Prepare per-function benchmark files.")
    parser.add_argument("benchmarks_dir", type=Path,
                        help="Directory containing the benchmark sources (e.g. benchmarks/)")
    args = parser.parse_args()

    bench_dir = args.benchmarks_dir
    funcs_dir = bench_dir / "funcs"

    for name, rel_source in BENCHMARKS + fiat_benchmarks(bench_dir):
        print(f"\n=== {name} ===")
        prepare_one(bench_dir / rel_source, name, bench_dir, funcs_dir)


if __name__ == "__main__":
    main()
