#!/bin/sh
# Install OpenWRT fro git repo

cd ~
git clone git://git.openwrt.org/openwrt.git

#(optional) Download and install all available "feeds" (see Downloading and Installing Feeds for more options!):
cd openwrt
./scripts/feeds update -a
./scripts/feeds install -a

# Make OpenWrt Buildroot check for missing packages on your build-system using one of the following commands:
make defconfig
make prereq
make menuconfig