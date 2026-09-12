# DESTIVA: DEcomposing Spatially and Temporally for translatIon VAlidation

This is the artifact for the paper Spatial and Temporal Decomposition for Faster Translation Validation. It includes three primary components: an instrumentation of LLVM to track instruction changes (`llvm-instruction-tracking`), our implementation of spatial and temporal decomposition, based on Alive2 (`alive2-decomp`), and several experimental running and analysis scripts.

## Kick the tires (~30 minutes)

From the repository root, build the docker container. This may take 30-60 minutes because it requires building LLVM.

```sh
docker build -t destiva . # add --build-arg BUILD_JOBS=N to tune parallelism
```
Then, start the container in interactive mode
```sh
docker run -it destiva bash
cd /root/destiva
./tires.sh
```

The `tires.sh` script checks that all the required components are present and built, and then runs each mode of DESTIVA on a single input to verify all parts are working. The expected output is:

```
== Checking for instrumented LLVM build ==
✓ Instrumented LLVM build found at /root/destiva/llvm-project/build

== Checking for alive2-decomp build ==
✓ Modified alive2 (alive2-decomp) build found at /root/destiva/alive2-decomp/build

== Checking benchmarks directory ==
✓ All benchmark directories present (bzip2 gzip oggenc ph7 sqlite3 fiat)

== Running each mode on a ~2-5s smoke-test function ==
✓ Mode alive_tv verified ph7/PH7_builtin_is_string in 3.356s
✓ Mode alive_tv_decompose verified sqlite3/sqlite3PagerSetCachesize in 0.662s
✓ Mode all_passes verified ph7/PH7_builtin_is_null in 1.748s
✓ Mode pairs_mean verified ph7/PH7_MemObjTypeDump in 2.191s
✓ Mode pairs_median verified ph7/vm_builtin_debug_string_backtrace in 2.658s
✓ Mode pairs_top2 verified sqlite3/saveCursorPosition in 1.62s
✓ Mode pairs_fixed verified sqlite3/sqlite3VdbeSorterRowkey in 1.728s
✓ Mode pairs_dynamic_four verified sqlite3/sqlite3OsRead in 9.175s
✓ Mode pairs_dynamic verified sqlite3/sqlite3PagerExclusiveLock in 2.345s
✓ Mode decompose verified ph7/PH7_VmPeekNextInstr in 7.34s
✓ Mode decompose_mean verified oggenc/ogg_stream_destroy in 0.768s
✓ Mode decompose_median verified ph7/ph7_context_throw_error in 6.824s
✓ Mode decompose_top2 verified sqlite3/vdbeRecordDecodeInt in 2.379s
✓ Mode decompose_fixed verified ph7/vm_builtin_ob_flush in 6.006s
✓ Mode decompose_dynamic_four verified ph7/PH7_ClassInstallAttr in 2.254s
✓ Mode decompose_dynamic verified sqlite3/incrAggDepth in 1.91s

All checks passed.
```

Exact timings will vary by machine, but every line should have a green ✓ and the script should exit with `All checks passed.`

## Evaluation Instructions

We recommend running DESTIVA by building a docker image from the provided Dockerfile, but in `Local Setup Instructions` below, we describe how to build DESTIVA and its dependencies locally too. The following instructions can be run either way.

### Running the experiments

The full sweep (`./runner.sh`: all 3,069 acyclic functions × 16 modes, with a
600 s solver timeout per job) took approximately one week to run on a machine with 64 cores. We therefore provide a script `sampler.sh` that generates a random sample of functions from the benchmark set for a smaller-scale test of DESTIVA during artifact evaluation. We also provide our raw experimental data from which the tables in the paper were generated.

1. Draw a sample (e.g. 50 functions), written to
   `benchmarks/funcs/sample.txt`:

   ```sh
   ./sampler.sh 50
   ```

2. Run the sweep on the sample instead of the full corpus, writing results
   to a file of your choosing:

   ```sh
   ./runner.sh benchmarks/funcs/sample.txt results_sample.jsonl
   ```

   With 50 functions, this takes on the order of a few hours. Each record in
   the output file is one JSON object per function, with per-mode verdicts
   (`correct` / `timeout` / …) and validation times.

   By default `runner.sh` runs sequentially (one function at a time). Pass
   `-j N` to run N functions in parallel, e.g.:

   ```sh
   ./runner.sh -j 8 benchmarks/funcs/sample.txt results_sample.jsonl
   ```

3. Analyze the run:

   ```sh
   python3 analysis/analysis.py results_sample.jsonl -o analysis/tables_sample.md
   ```

   The generated tables have the same structure as the paper's. Running in a docker container has significant performance costs compared to running directly on hardware. This may affect absolute running times and therefore the number of timeout cases, but it should not greatly change relative speedups.

   In addition, the absolute results for a random sample may differ from those in the paper, but we expect them to exhibit the same trends. To demonstrate our claims, we therefore also provide the raw data from our own experimental run for analysis in the artifact. Note that in the generation of Tables 3-6 and Figure 8, the reported values include replacing false alarms with base translation validation times, as described in Section 4.3 of the paper.

### Regenerating tables and figures

`analysis/merged.jsonl` contains the results of our full experimental run.
To regenerate the paper's tables and figures from it directly (seconds):

```sh
python3 analysis/analysis.py analysis/merged.jsonl -o analysis/tables.md
```

This writes `analysis/tables.md` and the two Figure 7 speedup plots
(`speedup_alive_tv_vs_alive_tv_decompose.png`,
`speedup_all_passes_vs_decompose.png`) next to it. You can run this same command on the results of a random sample re-run to produce equivalent diagrams.


## Claims

Table and figure numbers below refer to the paper and to the correspondingly
named sections of the generated `tables.md`.

**RQ1 — spatial decomposition**

- **RQ1.1:** Spatial decomposition speeds up solving relative to end-to-end
  translation validation.
  *Table 3 (end-to-end subtable: `alive_tv` vs. `alive_tv_decompose`) and the
  Figure 7 plot `speedup_alive_tv_vs_alive_tv_decompose.png`.*
- **RQ1.2:** Spatial decomposition speeds up solving relative to pass-by-pass
  validation under the portfolio methodology.
  *Table 3 (pass-by-pass subtable: `all_passes` vs. `decompose`, "Portfolio
  Speedup" row) and the Figure 7 plot
  `speedup_all_passes_vs_decompose.png`.*
- **RQ1.3:** Spatial decomposition is most effective on gzip and least
  effective on fiat, but achieves at least some speedup on every benchmark
  once initial validation time exceeds 10 seconds.
  *Table 4 (per-benchmark breakdown; the "> 10s" columns).*

**RQ2 — temporal decomposition**

- **RQ2.1:** Every temporal decomposition heuristic achieves a speedup over
  end-to-end validation, and every heuristic achieves at least some speedup
  over pass-by-pass validation under the portfolio methodology.
  *Table 5 ("Versus alive_tv (ee)": "Overall" row; "Versus all_passes (pp)":
  "Portfolio" row).*
- **RQ2.2:** The fastest temporal decomposition heuristic is clustering with
  four clusters (Clus4).
  *Table 5, comparing the heuristic columns (Clus4 is the `clusterfour`
  column).*

**RQ3 — combined spatial and temporal decomposition**

- **RQ3.1:** Clus4 is again the most effective heuristic when spatial and
  temporal decomposition are combined.
  *Table 6, comparing the heuristic columns.*
- **RQ3.2:** Combining spatial and temporal decomposition outperforms either
  form of decomposition on its own.
  *Figure 8b section of `tables.md` (Spatial vs. Temporal vs. Combined
  columns).*
- **RQ3.3:** Combined decomposition solves cases on which both existing
  approaches — end-to-end and pass-by-pass validation — time out.
  *Figure 8a (Venn) section of `tables.md`: the "only
  decompose_dynamic_four" count.*

## Reusability

- **Running a single experiment:** `tester.py` is the unit of the evaluation
  and is directly reusable, e.g.
  `python3 tester.py sqlite3 sqlite3OsRead --timeout 60 --methods decompose_dynamic_four`
  prints a JSON record with the verdict and time for each requested mode.
  See `--help` for the 16 available modes.
- **Adding a benchmark:** add a C source under `benchmarks/`, register it in
  the `BENCHMARKS` list in `prepare_benchmark.py`, and rerun that script to
  produce per-function `.ll` files; the per-pass diff data is produced with
  the tooling in `llvm-instruction-tracking/` (see its README).
- **Core components:** the decomposing validator lives in `alive2-decomp/`
  (usable as a drop-in `alive-tv` replacement), and the pass-instrumentation
  LLVM patch in `llvm-instruction-tracking/` applies to LLVM commit
  `027447c61724` and is independent of the rest of the artifact.

## Artifact Contents

| Path | Description |
| --- | --- |
| `Dockerfile` | Builds the complete toolchain (patched LLVM, Z3 4.12.3, `alive2-decomp`) plus the benchmark corpus and run scripts. |
| `alive2-decomp/` | Modified Alive2 (fork of [AliveToolkit/alive2](https://github.com/AliveToolkit/alive2)) implementing decomposed validation. |
| `llvm-instruction-tracking/` | LLVM patch and tooling that records, per optimization pass, how many instructions each pass touches. |
| `benchmarks/` | Benchmark C sources (bzip2, gzip, oggenc, ph7, sqlite3, fiat) and the prepared corpus in `benchmarks/funcs/`: one `.ll` file and one `*_passes.json` pass-diff file per function, plus category lists (`acyclic.txt`, `loops.txt`, `tiny.txt`). |
| `prepare_benchmark.py` | Compiles the benchmark sources and splits them into the per-function `.ll` files in `benchmarks/funcs/`. |
| `tester.py` | Runs one (function, mode) experiment: computes decomposition segments from the pass-diff data and invokes `alive-tv` / `opt-alive-test.sh` to verify them. |
| `runner.sh` | Full sweep: runs `tester.py` on every acyclic function in all 16 modes via GNU parallel; writes `results.jsonl`. |
| `sampler.sh` | Draws a random sample of functions for a smaller reproduction run. |
| `tires.sh` | Kick-the-tires smoke test. |
| `analysis/` | `analysis.py` (regenerates the paper's tables and figures from a results JSONL) and `merged.jsonl` (the authors' full experimental results). |

## Local Setup Instructions

### Requirements

Ubuntu 24.04 (or similar) with:

- `build-essential`
- `cmake`
- `ninja-build`
- `git`
- `python3`
- `re2c`
- `zlib1g-dev`
- GNU `parallel`
- Python `matplotlib` (for the analysis step)

1. **Patched LLVM.** Clone LLVM, check out the pinned commit, apply our
   instruction-tracking patch, and build:

   ```sh
   git clone https://github.com/llvm/llvm-project.git
   cd llvm-project
   git checkout 027447c61724385ae82f0a8dea34b45da2fd4c39
   git apply ../llvm-instruction-tracking/0001-Instruction-tracking.patch
   cmake -GNinja -S llvm -B build \
     -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_RTTI=ON -DBUILD_SHARED_LIBS=ON \
     -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_ENABLE_PROJECTS="llvm;clang"
   cmake --build build
   cd ..
   ```

2. **Z3 4.12.3.** The exact solver version matters for verdicts and timeouts
   (distribution packages are typically much older). Clone and build it:

   ```sh
   git clone --depth 1 --branch z3-4.12.3 https://github.com/Z3Prover/z3.git
   cmake -GNinja -S z3 -B z3/build -DCMAKE_BUILD_TYPE=Release \
     -DZ3_BUILD_PYTHON_BINDINGS=OFF -DCMAKE_INSTALL_PREFIX=/usr/local
   cmake --build z3/build --target install    # may need sudo; then run ldconfig
   ```

3. **Modified Alive2.** Build the vendored `alive2-decomp` against the two
   builds above:

   ```sh
   cd alive2-decomp
   mkdir build && cd build
   cmake -GNinja .. \
     -DCMAKE_BUILD_TYPE=Release -DBUILD_TV=1 \
     -DCMAKE_PREFIX_PATH=/path/to/llvm-project/build \
     -DZ3_INCLUDE_DIR=/usr/local/include -DZ3_LIBRARIES=/usr/local/lib/libz3.so
   ninja
   ```

The prepared benchmark corpus in `benchmarks/funcs/` ships with the artifact;
it does not need to be regenerated. (If you do want to rebuild the `.ll`
files from the C sources, run `python3 prepare_benchmark.py benchmarks` — see
that script's docstring.)


