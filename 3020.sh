#!/usr/bin/env bash
#
# TP-Link 3020 firmware build script

#make image PROFILE=TLMR3020  \
#PACKAGES="luci luci-i18n-russian \
#kmod-usb-storage block-mount kmod-fs-ext4 \
#kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-acm kmod-usb-net usb-modeswitch \
#luci-proto-3g kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-acm usb-modeswitch \
#kmod-rtl8187 kmod-ath9k-htc aircrack-ng reaver luci-theme-bootstrap nano tcpdump fdisk e2fsprogs \
#kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount kmod-fs-vfat kmod-fs-msdos " V=99

make image PROFILE=TLMR3020  PACKAGES="luci luci-i18n-russian luci-theme-bootstrap \
kmod-usb2 kmod-usb-storage block-mount kmod-fs-ext4 kmod-usb-storage \
kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-acm \
autossh" V=99