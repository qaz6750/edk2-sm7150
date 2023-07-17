#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p sm7150Pkg/qcom-sdmmagpie.dsc -b RELEASE
gzip -c < workspace/Build/sdmmagpie/RELEASE_GCC5/FV/SM7150_UEFI.fd >uefi.img
cat qcom-sdmmagpie.dtb >>uefi.img
echo > ramdisk
abootimg --create boot-sdmmagpie.img -k uefi.img -r ramdisk