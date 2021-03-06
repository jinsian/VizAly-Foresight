#!/bin/bash

# Build blosc
echo "Building BLOSC ... "

git clone https://github.com/Blosc/c-blosc.git
cd c-blosc/
git checkout v1.10.2
mkdir install
mkdir build
cd build
cmake .. -DCMAKE_C_FLAGS=-dynamic -DCMAKE_CXX_FLAGS=-dynamic -DCMAKE_INSTALL_PREFIX=../install
make -j
make install
cd ..
cd ..

echo "Building BLOSC done!"