#!/bin/bash
#make sure you added toolchain to bash.rc
#example
#export AARCH64_COMPILR=$HOME/android/aarch64-linux-android-4.9/bin
#export CROSS_COMPILE=aarch64-linux-android-
#export PATH=$PATH:$AARCH64_COMPILR
cd kernel
make ARCH=arm64 O=../out merge_kirin980_defconfig
make ARCH=arm64 O=../out menuconfig
make ARCH=arm64 O=../out -j8

