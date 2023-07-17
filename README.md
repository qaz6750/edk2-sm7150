EDK2 for SM7150.

Based on zhuowei's commits for Pixel3XL - https://github.com/Pixel3Dev/edk2-pixel3

## WARNING

**DO NOT EVER TRY TO PORT IT TO *SONY* and *GOOGLE* DEVICES**

**YOUR UFS WILL BE WIPED CLEAN!!!**

## Building
Tested on:

Ubuntu 20.04 (WSL2)

Ubuntu 18.04 arm64 (android chroot)

Setup
```
git clone https://github.com/qaz6750/edk2-sm7150
git clone https://github.com/tianocore/edk2.git --recursive --depth 1
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu abootimg
cd edk2-sm7150
./firstrun.sh
```
Build
```
./build.sh
```

# Credits

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).

`fxsheep` for his original `edk2-sagit`

`strongtz` for maintaining Renegade Project
