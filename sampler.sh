#!/bin/bash

# Generate a random sample of n lines from acyclic.txt, written to sample.txt
# in the same directory.
#
# Usage: sampler.sh <n>

set -euo pipefail

if [[ $# -ne 1 || ! "$1" =~ ^[0-9]+$ ]]; then
    echo "Usage: $0 <n>" >&2
    exit 1
fi

N="$1"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FUNCS_DIR="$SCRIPT_DIR/benchmarks/funcs"
ACYCLIC_FILE="$FUNCS_DIR/acyclic.txt"
SAMPLE_FILE="$FUNCS_DIR/sample.txt"

shuf -n "$N" "$ACYCLIC_FILE" > "$SAMPLE_FILE"
