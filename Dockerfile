# Packages the exact toolchain used by this project:
#   1. `llvm` stage: upstream llvm-project pinned at LLVM_COMMIT, patched with
#      mikekben/llvm-instruction-tracking's 0001-Instruction-tracking.patch.
#   2. `z3` stage: Z3 4.12.3 built from source, matching the exact solver
#      version the host experiments use (apt's libz3-dev on Ubuntu 24.04 is
#      only 4.8.12; solver version affects verdicts/timeouts in general).
#      Note: an early 7/8 lit failure once blamed on the Z3 version was
#      actually LLVM build-to-build nondeterminism (hash-container iteration
#      order changing the extracted slice's exit/filler shape) -- reproduced
#      with the host's own libz3.so bind-mounted -- and was fixed by making
#      speculated-move-selected.opt.ll's CHECKs shape-independent.
#   3. `alive2` stage: mikekben/alive2-decomp (fork), built against stages
#      1 and 2. Vendored directly as plain tracked files in this repo (not a
#      submodule), so it's copied in like any other source directory.
#
# Build from the repo root:
#   docker build -t destiva .

FROM ubuntu:24.04 AS z3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    git \
    python3 \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ARG Z3_TAG=z3-4.12.3
WORKDIR /root/destiva

RUN git clone --depth 1 --branch ${Z3_TAG} https://github.com/Z3Prover/z3.git

ARG BUILD_JOBS=16
RUN cmake -GNinja -S z3 -B z3/build \
      -DCMAKE_BUILD_TYPE=Release \
      -DZ3_BUILD_PYTHON_BINDINGS=OFF \
      -DCMAKE_INSTALL_PREFIX=/root/destiva/z3-install \
    && cmake --build z3/build -j ${BUILD_JOBS} --target install


FROM ubuntu:24.04 AS llvm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    git \
    python3 \
    re2c \
    libz3-dev \
    zlib1g-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ARG LLVM_COMMIT=027447c61724385ae82f0a8dea34b45da2fd4c39
WORKDIR /root/destiva

RUN git clone --filter=blob:none https://github.com/llvm/llvm-project.git && \
    cd llvm-project && \
    git checkout ${LLVM_COMMIT}

COPY llvm-instruction-tracking /root/destiva/llvm-instruction-tracking

RUN cd /root/destiva/llvm-project && \
    git apply /root/destiva/llvm-instruction-tracking/0001-Instruction-tracking.patch

ARG BUILD_JOBS=16
RUN cmake -GNinja -S /root/destiva/llvm-project/llvm -B /root/destiva/llvm-project/build \
      -DLLVM_ENABLE_RTTI=ON \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_ENABLE_ASSERTIONS=ON \
      -DLLVM_ENABLE_PROJECTS="llvm;clang" \
    && cmake --build /root/destiva/llvm-project/build -j ${BUILD_JOBS}


FROM llvm AS alive2

# Built Z3 4.12.3 (see the `z3` stage above), installed to /usr/local so the
# dynamic linker finds it after `ldconfig`.
COPY --from=z3 /root/destiva/z3-install/ /usr/local/
RUN ldconfig

# alive2-decomp is a fork of https://github.com/AliveToolkit/alive2
# (mikekben/alive2-decomp), vendored as plain tracked files (no .git present
# in the image). CMakeLists.txt's version stamp step tolerates this: it falls
# back to "unknown" when `git describe` isn't available, instead of requiring
# a git repo.
COPY alive2-decomp /root/destiva/alive2-decomp

COPY build-alive.sh /root/destiva/build-alive.sh

ARG BUILD_JOBS=16
RUN chmod +x /root/destiva/build-alive.sh && BUILD_JOBS=${BUILD_JOBS} /root/destiva/build-alive.sh

# GNU parallel: used by runner.sh to fan the (function, mode) sweep out
# across jobs. python3-matplotlib: used by analysis/analysis.py to render the
# Figure 7 speedup plots.
RUN apt-get update && apt-get install -y --no-install-recommends \
    parallel \
    python3-matplotlib \
    && rm -rf /var/lib/apt/lists/*

# Benchmark-preparation tooling: compiles each benchmark's C source to
# per-function .ll files against the llvm stage's pinned-commit build above.
COPY prepare_benchmark.py /root/destiva/prepare_benchmark.py
COPY benchmarks /root/destiva/benchmarks

# Sweep driver: runs tester.py (pass-diff heuristics + alive2-decomp
# verification) over the prepared corpus via GNU parallel.
COPY tester.py /root/destiva/tester.py
COPY runner.sh /root/destiva/runner.sh
COPY sampler.sh /root/destiva/sampler.sh
COPY tires.sh /root/destiva/tires.sh

# Analysis scripts + the authors' full experimental results, so tables/figures
# can be regenerated without rerunning the sweep.
COPY analysis /root/destiva/analysis

# Everything else in the repo not already copied above.
COPY README.md /root/destiva/README.md
