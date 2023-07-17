#!/bin/bash
# based on the instructions from edk2-platform
# do this first:
# https://github.com/tianocore/tianocore.github.io/wiki/Using-EDK-II-with-Native-GCC#Install_required_software_from_apt
set -e
mkdir -p workspace
. build_common.sh
make -C Common/edk2/BaseTools

