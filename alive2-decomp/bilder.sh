CMAKE=/data2/ben/ctr/cmake/bin/cmake


export PATH=/data2/ben/ctr/re2c/install/bin:$PATH

#Building alive2


[ ! -d "build" ] && mkdir build
cd build

$CMAKE -GNinja -DCMAKE_PREFIX_PATH=/data2/ben/alive-decomp/tools/llvm-project/build -DBUILD_TV=1 -DCMAKE_BUILD_TYPE=Release -DZ3_INCLUDE_DIR=/data2/ben/ctr/z3/usr/include -DZ3_LIBRARIES=/data2/ben/ctr/z3/usr/lib/libz3.so .. 
ninja