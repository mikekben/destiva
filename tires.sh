#!/bin/bash

# Kick-the-tires smoke test: checks that the instrumented LLVM build, the
# modified alive2 build, and the benchmark corpus are all in place, then runs
# every tester.py mode once against a hardcoded function chosen (from
# analysis/merged.jsonl) to take roughly 2-5 seconds in that mode -- long
# enough to be a meaningful check, short enough to run the whole suite fast.
#
# Usage: ./tires.sh

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

FAIL=0
GREEN='\033[0;32m'
RESET='\033[0m'

step() {
    echo
    echo "== $1 =="
}

# Print a short PASS line with a green checkmark.
pass() {
    printf "${GREEN}\xE2\x9C\x93${RESET} %s\n" "$1"
}

# ---------------------------------------------------------------------------
# 1. Instrumented LLVM build
# ---------------------------------------------------------------------------

step "Checking for instrumented LLVM build"

# Candidate LLVM build directories: an explicit override, the in-container
# location baked in by the Dockerfile, and the known host location. The
# alive2-decomp CMakeCache (if already configured) is the most authoritative
# source, so it's checked first.
llvm_build_candidates=()
[ -n "${LLVM_BUILD_DIR:-}" ] && llvm_build_candidates+=("$LLVM_BUILD_DIR")
if [ -f "$SCRIPT_DIR/alive2-decomp/build/CMakeCache.txt" ]; then
    cached=$(grep '^LLVM_DIR:PATH=' "$SCRIPT_DIR/alive2-decomp/build/CMakeCache.txt" \
             | sed -e 's/^LLVM_DIR:PATH=//' -e 's#/lib/cmake/llvm$##')
    [ -n "$cached" ] && llvm_build_candidates+=("$cached")
fi
llvm_build_candidates+=(
    "/root/destiva/llvm-project/build"
    "/data2/ben/alive-decomp/tools/llvm-project/build"
)

LLVM_BUILD=""
for cand in "${llvm_build_candidates[@]}"; do
    [ -d "$cand" ] || continue
    [ -x "$cand/bin/opt" ] || continue
    [ -x "$cand/bin/clang" ] || continue
    LLVM_BUILD="$cand"
    break
done

if [ -z "$LLVM_BUILD" ]; then
    echo "FAIL: no LLVM build found with bin/opt and bin/clang (checked: ${llvm_build_candidates[*]})"
    FAIL=1
else
    llvm_src="$(dirname "$LLVM_BUILD")/llvm"
    if [ -f "$llvm_src/include/llvm/Support/MyMetadata.h" ]; then
        pass "Instrumented LLVM build found at $LLVM_BUILD"
    else
        echo "FAIL: LLVM build found at $LLVM_BUILD, but instrumentation patch"
        echo "      (missing $llvm_src/include/llvm/Support/MyMetadata.h) doesn't look applied"
        FAIL=1
    fi
fi

# ---------------------------------------------------------------------------
# 2. Modified alive2 (alive2-decomp) build
# ---------------------------------------------------------------------------

step "Checking for alive2-decomp build"

ALIVE_TV="$SCRIPT_DIR/alive2-decomp/build/alive-tv"
OPT_ALIVE="$SCRIPT_DIR/alive2-decomp/build/opt-alive-test.sh"

if [ -x "$ALIVE_TV" ] && [ -x "$OPT_ALIVE" ]; then
    pass "Modified alive2 (alive2-decomp) build found at $SCRIPT_DIR/alive2-decomp/build"
else
    echo "FAIL: missing alive2-decomp build artifacts"
    [ -x "$ALIVE_TV" ]  || echo "      missing/non-executable: $ALIVE_TV"
    [ -x "$OPT_ALIVE" ] || echo "      missing/non-executable: $OPT_ALIVE"
    FAIL=1
fi

# ---------------------------------------------------------------------------
# 3. Benchmarks directory
# ---------------------------------------------------------------------------

step "Checking benchmarks directory"

FUNCS_DIR="$SCRIPT_DIR/benchmarks/funcs"
STEMS=(bzip2 gzip oggenc ph7 sqlite3 fiat)

if [ ! -d "$FUNCS_DIR" ]; then
    echo "FAIL: $FUNCS_DIR not found"
    FAIL=1
else
    missing_stems=()
    for stem in "${STEMS[@]}"; do
        stem_dir="$FUNCS_DIR/$stem"
        if [ ! -d "$stem_dir" ] || [ -z "$(find "$stem_dir" -maxdepth 1 -name '*.ll' -print -quit 2>/dev/null)" ]; then
            missing_stems+=("$stem")
        fi
    done
    if [ ${#missing_stems[@]} -eq 0 ]; then
        pass "All benchmark directories present (${STEMS[*]})"
    else
        echo "FAIL: missing/empty benchmark dirs: ${missing_stems[*]}"
        FAIL=1
    fi
fi

# ---------------------------------------------------------------------------
# 4. Run each mode once, on a function chosen to take ~10s in that mode
# ---------------------------------------------------------------------------

step "Running each mode on a ~2-5s smoke-test function"

if [ "$FAIL" -ne 0 ]; then
    echo "Skipping mode smoke tests: earlier checks failed."
    exit 1
fi

# mode:stem:function, picked from analysis/merged.jsonl as the closest-to-3.5s
# "correct" result (within a 2-5s band) for that mode.
SMOKE_TESTS=(
    "alive_tv:ph7:PH7_builtin_is_string"
    "alive_tv_decompose:sqlite3:sqlite3PagerSetCachesize"
    "all_passes:ph7:PH7_builtin_is_null"
    "pairs_mean:ph7:PH7_MemObjTypeDump"
    "pairs_median:ph7:vm_builtin_debug_string_backtrace"
    "pairs_top2:sqlite3:saveCursorPosition"
    "pairs_fixed:sqlite3:sqlite3VdbeSorterRowkey"
    "pairs_dynamic_four:sqlite3:sqlite3OsRead"
    "pairs_dynamic:sqlite3:sqlite3PagerExclusiveLock"
    "decompose:ph7:PH7_VmPeekNextInstr"
    "decompose_mean:oggenc:ogg_stream_destroy"
    "decompose_median:ph7:ph7_context_throw_error"
    "decompose_top2:sqlite3:vdbeRecordDecodeInt"
    "decompose_fixed:ph7:vm_builtin_ob_flush"
    "decompose_dynamic_four:ph7:PH7_ClassInstallAttr"
    "decompose_dynamic:sqlite3:incrAggDepth"
)

MODE_TIMEOUT=60

for entry in "${SMOKE_TESTS[@]}"; do
    IFS=':' read -r mode stem func <<< "$entry"
    out=$(python3 "$SCRIPT_DIR/tester.py" "$stem" "$func" \
              --timeout "$MODE_TIMEOUT" --methods "$mode" 2>&1)
    result=$(echo "$out" | python3 -c "import json,sys; print(json.load(sys.stdin)['$mode']['result'])" 2>/dev/null)
    elapsed=$(echo "$out" | python3 -c "import json,sys; print(json.load(sys.stdin)['$mode']['time'])" 2>/dev/null)

    if [ "$result" = "correct" ]; then
        pass "Mode $mode verified $stem/$func in ${elapsed}s"
    else
        printf "FAIL  %-24s %-10s %-30s (result=%s)\n" "$mode" "$stem" "$func" "${result:-error}"
        echo "      $out"
        FAIL=1
    fi
done

echo
if [ "$FAIL" -eq 0 ]; then
    echo "All checks passed."
else
    echo "Some checks failed; see above."
fi

exit "$FAIL"
