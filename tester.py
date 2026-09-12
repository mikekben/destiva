#!/usr/bin/env python3
"""Given a function stem and name, read its pass diff data, compute pairs using
the pairs heuristics, and call opt-alive-test.sh / alive-tv to verify them.

Usage:
    python tester.py <stem> <func> [--dry-run] [--timeout N] [--methods ...]

stem: subdirectory in benchmarks/funcs (e.g. bzip2, sqlite3, fiat)
func: filename stem in that directory (e.g. BZ2_blockSort, or for fiat:
      curve25519_32_fiat_25519_value_barrier_u32)
"""

import argparse
import json
import os
import signal
import statistics
import subprocess
import sys
import time
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
FUNCS_DIR = SCRIPT_DIR / "benchmarks" / "funcs"
OPT_ALIVE = SCRIPT_DIR / "alive2-decomp" / "build" / "opt-alive-test.sh"
ALIVE_TV  = str(SCRIPT_DIR / "alive2-decomp" / "build" / "alive-tv")


def count_instructions(ir_text, func_name):
    """Count instruction lines in a function body (indented lines between its
    `define` line and closing brace), matching llvm-instruction-tracking's
    count_instructions() so results stay comparable with analysis/merged.jsonl."""
    inside = False
    count = 0
    for line in ir_text.splitlines():
        if not inside:
            if 'define' in line and f'@{func_name}' in line:
                inside = True
        else:
            if line.rstrip() == '}':
                break
            if line.startswith(' ') or line.startswith('\t'):
                count += 1
    return count


def sig_changes(passes, threshold_fn):
    """Return (index, name, diff) for passes whose diff exceeds threshold_fn of non-zero diffs."""
    diffs = [
        (i, p["name"], p["diff"])
        for i, p in enumerate(passes)
        if i > 0 and p["diff"] > 0
    ]
    if not diffs:
        return []
    threshold = threshold_fn([d for _, _, d in diffs])
    return sorted(
        [(i, name, d) for i, name, d in diffs if d > threshold],
        key=lambda x: x[0],
    )


def pairs_heuristic(passes, threshold_fn):
    n = len(passes)
    changes = sig_changes(passes, threshold_fn)

    breakpoints = sorted(set(
        [0] +
        [x for idx, _, _ in changes for x in (idx - 1, idx)] +
        [n - 1]
    ))
    return [(a, b) for a, b in zip(breakpoints, breakpoints[1:]) if a < b]


def pairs_mean(passes):
    return pairs_heuristic(passes, statistics.mean)


def pairs_median(passes):
    return pairs_heuristic(passes, statistics.median)


def pairs_fixed(passes):
    n = len(passes)
    breakpoints = sorted(set([0, n // 4, n // 2, 3 * n // 4, n - 1]))
    return [(a, b) for a, b in zip(breakpoints, breakpoints[1:]) if a < b]


def pairs_top2(passes):
    diffs = sorted(
        [(i, p["name"], p["diff"]) for i, p in enumerate(passes) if i > 0 and p["diff"] > 0],
        key=lambda x: -x[2]
    )
    top = sorted(diffs[:2], key=lambda x: x[0])  # take top 2, restore index order
    n = len(passes)
    breakpoints = sorted(set(
        [0] +
        [x for idx, _, _ in top for x in (idx - 1, idx)] +
        [n - 1]
    ))
    return [(a, b) for a, b in zip(breakpoints, breakpoints[1:]) if a < b]


def pairs_dynamic(passes):
    """Like pairs_dynamic_four but uses all passes that change something, no upper limit."""
    n = len(passes)
    top = sorted(i for i, p in enumerate(passes) if i > 0 and p["diff"] > 0)
    if not top:
        return [(0, n - 1)]
    breakpoints = [0]
    for a, b in zip(top, top[1:]):
        breakpoints.append((a + b) // 2)
    breakpoints.append(n - 1)
    breakpoints = sorted(set(breakpoints))
    return [(a, b) for a, b in zip(breakpoints, breakpoints[1:]) if a < b]


def pairs_dynamic_four(passes):
    """Find the top 4 changed passes and center each in its own segment.

    Boundaries between segments are placed at the midpoint (floor) between
    consecutive top passes, with 0 and n-1 as the outer boundaries.
    If fewer than 4 passes have any diff, only that many segments are made.
    """
    n = len(passes)
    diffs = sorted(
        [(i, p["diff"]) for i, p in enumerate(passes) if i > 0 and p["diff"] > 0],
        key=lambda x: -x[1]
    )
    top = sorted(i for i, _ in diffs[:4])  # up to top 4, restored to index order
    if not top:
        return [(0, n - 1)]
    breakpoints = [0]
    for a, b in zip(top, top[1:]):
        breakpoints.append((a + b) // 2)
    breakpoints.append(n - 1)
    breakpoints = sorted(set(breakpoints))
    return [(a, b) for a, b in zip(breakpoints, breakpoints[1:]) if a < b]


def run_timed(cmd, timeout=None, capture_stderr=False):
    """Run a command, return (result, elapsed_seconds[, stderr]).

    result is "correct", "timeout", or "incorrect".
    timeout is a wall-clock limit in seconds; if exceeded the entire process
    group (including grandchildren like opt and z3) is killed.
    If capture_stderr is True, stderr text is also returned as a third value.
    """
    t0 = time.perf_counter()
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                            text=True, start_new_session=True)
    stderr = ""
    try:
        stdout, stderr = proc.communicate(timeout=timeout)
        if proc.returncode != 0:
            result = "incorrect"
        elif "ERROR: Timeout" in stdout or "ERROR: Timeout" in stderr:
            result = "timeout"
        else:
            result = "correct"
    except subprocess.TimeoutExpired:
        os.killpg(proc.pid, signal.SIGKILL)
        proc.communicate()
        result = "timeout"
    elapsed = round(time.perf_counter() - t0, 3)
    if capture_stderr:
        return result, elapsed, stderr
    return result, elapsed


def parse_decompose_sizes(stderr_text):
    """Parse DECOMPOSE_SIZE lines from stderr into a list of dicts."""
    sizes = []
    for line in stderr_text.splitlines():
        if not line.startswith("DECOMPOSE_SIZE:"):
            continue
        entry = {}
        for token in line[len("DECOMPOSE_SIZE:"):].split():
            k, _, v = token.partition("=")
            entry[k] = int(v) if v.isdigit() else v
        sizes.append(entry)
    return sizes


def main():
    all_methods = [
        "alive_tv", "alive_tv_decompose", "all_passes",
        "pairs_mean", "pairs_median", "pairs_top2", "pairs_fixed",
        "pairs_dynamic_four", "pairs_dynamic",
        "decompose",
        "decompose_mean", "decompose_median", "decompose_top2", "decompose_fixed",
        "decompose_dynamic_four", "decompose_dynamic",
    ]

    parser = argparse.ArgumentParser()
    parser.add_argument("stem", help="Subdirectory in benchmarks/funcs (e.g. bzip2, fiat)")
    parser.add_argument("func", help="Filename stem in that directory (without .ll)")
    parser.add_argument("--dry-run", action="store_true", help="Print commands but don't run")
    parser.add_argument("--timeout", type=float, default=30,
                        help="Wall-clock timeout in seconds per run (default: 30)")
    parser.add_argument("--methods", nargs="+", choices=all_methods, default=all_methods,
                        metavar="METHOD",
                        help=f"Methods to run (default: all). Choices: {', '.join(all_methods)}")
    args = parser.parse_args()
    methods = set(args.methods)

    json_path = FUNCS_DIR / args.stem / f"{args.func}_passes.json"
    ll_path = FUNCS_DIR / args.stem / f"{args.func}.ll"

    if not json_path.exists():
        print(f"Error: {json_path} not found", file=sys.stderr)
        sys.exit(1)
    if not ll_path.exists():
        print(f"Error: {ll_path} not found", file=sys.stderr)
        sys.exit(1)

    data = json.loads(json_path.read_text())
    passes = data["passes"]
    func_name = data["function"]

    pm_mean         = list(pairs_mean(passes))
    pm_median       = list(pairs_median(passes))
    pm_top2         = list(pairs_top2(passes))
    pm_fixed        = list(pairs_fixed(passes))
    pm_dynamic_four = list(pairs_dynamic_four(passes))
    pm_dynamic      = list(pairs_dynamic(passes))

    def tv_pairs_str(pairs):
        return ",".join(f"{passes[a]['name']}:{passes[b]['name']}" for a, b in pairs)

    cmd_alive_tv           = [ALIVE_TV, "--smt-to=0", "--passes=O3", str(ll_path)]
    cmd_alive_tv_decompose = [ALIVE_TV, "--smt-to=0", "--passes=O3", "--decompose", str(ll_path)]
    cmd_pairs_mean    = [str(OPT_ALIVE), "-tv-smt-to=0", f"-tv-check-pairs={tv_pairs_str(pm_mean)}",
                         "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_pairs_median  = [str(OPT_ALIVE), "-tv-smt-to=0", f"-tv-check-pairs={tv_pairs_str(pm_median)}",
                         "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_pairs_top2    = [str(OPT_ALIVE), "-tv-smt-to=0", f"-tv-check-pairs={tv_pairs_str(pm_top2)}",
                         "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_pairs_fixed   = [str(OPT_ALIVE), "-tv-smt-to=0", f"-tv-check-pairs={tv_pairs_str(pm_fixed)}",
                         "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_all_passes    = [str(OPT_ALIVE), "-tv-smt-to=0",
                         "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose     = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                         "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose_mean   = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                            f"-tv-check-pairs={tv_pairs_str(pm_mean)}",
                            "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose_median = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                            f"-tv-check-pairs={tv_pairs_str(pm_median)}",
                            "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose_top2   = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                            f"-tv-check-pairs={tv_pairs_str(pm_top2)}",
                            "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose_fixed  = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                            f"-tv-check-pairs={tv_pairs_str(pm_fixed)}",
                            "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_pairs_dynamic_four    = [str(OPT_ALIVE), "-tv-smt-to=0", f"-tv-check-pairs={tv_pairs_str(pm_dynamic_four)}",
                                 "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose_dynamic_four = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                                  f"-tv-check-pairs={tv_pairs_str(pm_dynamic_four)}",
                                  "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_pairs_dynamic         = [str(OPT_ALIVE), "-tv-smt-to=0", f"-tv-check-pairs={tv_pairs_str(pm_dynamic)}",
                                 "-O3", str(ll_path), "-S", "-o", "/dev/null"]
    cmd_decompose_dynamic     = [str(OPT_ALIVE), "-tv-smt-to=0", "--decompose",
                                 f"-tv-check-pairs={tv_pairs_str(pm_dynamic)}",
                                 "-O3", str(ll_path), "-S", "-o", "/dev/null"]

    if args.dry_run:
        return

    wall = args.timeout
    num_instructions = count_instructions(ll_path.read_text(), func_name)
    result = {"file": str(ll_path), "function": func_name, "num_instructions": num_instructions}

    if "alive_tv" in methods:
        r, t = run_timed(cmd_alive_tv, timeout=wall)
        result["alive_tv"] = {"result": r, "time": t}
    if "alive_tv_decompose" in methods:
        r, t, stderr = run_timed(cmd_alive_tv_decompose, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["alive_tv_decompose"] = {"result": r, "time": t, "sizes": sizes}
    if "pairs_mean" in methods:
        r, t = run_timed(cmd_pairs_mean, timeout=wall)
        result["pairs_mean"] = {"result": r, "time": t, "num_pairs": len(pm_mean)}
    if "pairs_median" in methods:
        r, t = run_timed(cmd_pairs_median, timeout=wall)
        result["pairs_median"] = {"result": r, "time": t, "num_pairs": len(pm_median)}
    if "pairs_top2" in methods:
        r, t = run_timed(cmd_pairs_top2, timeout=wall)
        result["pairs_top2"] = {"result": r, "time": t, "num_pairs": len(pm_top2)}
    if "pairs_fixed" in methods:
        r, t = run_timed(cmd_pairs_fixed, timeout=wall)
        result["pairs_fixed"] = {"result": r, "time": t, "num_pairs": len(pm_fixed)}
    if "all_passes" in methods:
        r, t = run_timed(cmd_all_passes, timeout=wall)
        result["all_passes"] = {"result": r, "time": t}
    if "decompose" in methods:
        r, t, stderr = run_timed(cmd_decompose, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose"] = {"result": r, "time": t, "sizes": sizes}
    if "decompose_mean" in methods:
        r, t, stderr = run_timed(cmd_decompose_mean, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose_mean"] = {"result": r, "time": t, "num_pairs": len(pm_mean), "sizes": sizes}
    if "decompose_median" in methods:
        r, t, stderr = run_timed(cmd_decompose_median, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose_median"] = {"result": r, "time": t, "num_pairs": len(pm_median), "sizes": sizes}
    if "decompose_top2" in methods:
        r, t, stderr = run_timed(cmd_decompose_top2, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose_top2"] = {"result": r, "time": t, "num_pairs": len(pm_top2), "sizes": sizes}
    if "decompose_fixed" in methods:
        r, t, stderr = run_timed(cmd_decompose_fixed, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose_fixed"] = {"result": r, "time": t, "num_pairs": len(pm_fixed), "sizes": sizes}
    if "pairs_dynamic_four" in methods:
        r, t = run_timed(cmd_pairs_dynamic_four, timeout=wall)
        result["pairs_dynamic_four"] = {"result": r, "time": t, "num_pairs": len(pm_dynamic_four)}
    if "decompose_dynamic_four" in methods:
        r, t, stderr = run_timed(cmd_decompose_dynamic_four, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose_dynamic_four"] = {"result": r, "time": t, "num_pairs": len(pm_dynamic_four), "sizes": sizes}
    if "pairs_dynamic" in methods:
        r, t = run_timed(cmd_pairs_dynamic, timeout=wall)
        result["pairs_dynamic"] = {"result": r, "time": t, "num_pairs": len(pm_dynamic)}
    if "decompose_dynamic" in methods:
        r, t, stderr = run_timed(cmd_decompose_dynamic, timeout=wall, capture_stderr=True)
        sizes = parse_decompose_sizes(stderr)
        result["decompose_dynamic"] = {"result": r, "time": t, "num_pairs": len(pm_dynamic), "sizes": sizes}

    print(json.dumps(result))


if __name__ == "__main__":
    main()
