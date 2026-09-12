#!/bin/bash

# Run tester.py on each function in a corpus list with all 16 methods.
# Reads pass diff data from benchmarks/funcs/<stem>/<func>_passes.json.
#
# Usage: ./runner.sh [-j N] [functions_file] [output_file]
#   -j N            run N jobs in parallel (default: 1, i.e. sequential)
#   functions_file  corpus list file, one <stem>/<func>.ll path per line
#                   (default: benchmarks/funcs/acyclic.txt)
#   output_file     where results are written, one JSON record per line
#                   (default: results.jsonl)

export ALIVE_TIMEOUT=600
WALL_TIMEOUT=10000
export MEM_LIMIT_KB=$((4 * 1024 * 1024))  # 4 GB per job

JOBS=1
while getopts "j:" opt; do
    case "$opt" in
        j) JOBS="$OPTARG" ;;
        *) echo "Usage: $0 [-j N] [functions_file] [output_file]" >&2; exit 1 ;;
    esac
done
shift $((OPTIND - 1))

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FUNCS_DIR="$SCRIPT_DIR/benchmarks/funcs"
INPUT_FILE="${1:-$FUNCS_DIR/acyclic.txt}"
OUTPUT_FILE="${2:-$SCRIPT_DIR/results.jsonl}"
FUN_LIST="$SCRIPT_DIR/fun_list.txt"

# Build the (stem,func) corpus list from the input category file.
sed 's#\.ll$##; s#/#,#' "$INPUT_FILE" > "$FUN_LIST"

run_job() {
    ulimit -v "$MEM_LIMIT_KB"
    exec python3 "$SCRIPT_DIR/tester.py" "$1" "$2" --timeout "$ALIVE_TIMEOUT" \
      --methods alive_tv alive_tv_decompose all_passes \
                pairs_mean pairs_median pairs_top2 pairs_fixed pairs_dynamic_four pairs_dynamic \
                decompose decompose_mean decompose_median decompose_top2 decompose_fixed \
                decompose_dynamic_four decompose_dynamic
}
export -f run_job
export SCRIPT_DIR

parallel -j "$JOBS" --colsep ',' --timeout "$WALL_TIMEOUT" \
  run_job {1} {2} \
  :::: "$FUN_LIST" | tee "$OUTPUT_FILE"
