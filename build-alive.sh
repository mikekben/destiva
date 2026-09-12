#!/bin/bash
# Container counterpart of the repo root's build-alive.sh. Same cmake
# invocation, but pointed at in-container paths: system cmake/re2c (from
# apt, not /data2/ben/ctr), the LLVM build baked into the `llvm` stage at
# /root/destiva/llvm-project/build, and Z3 4.12.3 built from source (the `z3`
# stage) and installed to /usr/local for exact version parity with the
# host experiments -- apt's libz3-dev is only 4.8.12 (see Dockerfile header).
set -euo pipefail

cd /root/destiva/alive2-decomp

rm -rf build
mkdir build
cd build

cmake -GNinja \
  -DCMAKE_PREFIX_PATH=/root/destiva/llvm-project/build \
  -DBUILD_TV=1 \
  -DCMAKE_BUILD_TYPE=Release \
  -DZ3_INCLUDE_DIR=/usr/local/include \
  -DZ3_LIBRARIES=/usr/local/lib/libz3.so \
  ..
ninja -j "${BUILD_JOBS:-16}"
