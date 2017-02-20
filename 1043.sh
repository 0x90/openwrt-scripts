#!/bin/bash

cd 14.07/OpenWrt-ImageBuilder-ar71xx_generic-for-linux-x86_64
make image PROFILE=TLWR1043 PACKAGES="luci luci-i18n-russian" && \
    cp bin/ar71xx/openwrt-ar71xx-generic-tl-wr1043nd-v1-squashfs-factory.bin ../../firmware/megarouter_1407_1043nd.bin
