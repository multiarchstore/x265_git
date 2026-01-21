#!/bin/bash
# Run this from within a bash shell

cmake -DCMAKE_TOOLCHAIN_FILE="crosscompile.cmake" -G "Unix Makefiles"  -DCMAKE_C_FLAGS_INIT="-msimd=lsx"  -DCMAKE_CXX_FLAGS_INIT="-msimd=lsx" ../../source && cmake ../../source
