#!/bin/bash

make LLVM=1 LLVM_IAS=1 KCPPFLAGS="-mcpu=native -march=native -mtune=native" KAFLAGS="-mcpu=native -march=native -mtune=native" KCFLAGS="-mcpu=native -march=native -mtune=native" config_defconfig
make LLVM=1 LLVM_IAS=1 KCPPFLAGS="-mcpu=native -march=native -mtune=native" KAFLAGS="-mcpu=native -march=native -mtune=native" KCFLAGS="-mcpu=native -march=native -mtune=native" -j$(nproc --all) deb-pkg
