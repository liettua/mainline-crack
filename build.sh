#!/bin/bash

export PATH="$HOME/clang+llvm-14.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/:$PATH"

make LLVM=1 LLVM_IAS=1 KCPPFLAGS="-mcpu=native -march=native -mtune=native" KAFLAGS="-mcpu=native -march=native -mtune=native" KCFLAGS="-mcpu=native -march=native -mtune=native" config_defconfig
make LLVM=1 LLVM_IAS=1 KCPPFLAGS="-mcpu=native -march=native -mtune=native" KAFLAGS="-mcpu=native -march=native -mtune=native" KCFLAGS="-mcpu=native -march=native -mtune=native" -j$(nproc --all) deb-pkg
