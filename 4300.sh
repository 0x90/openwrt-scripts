#!/bin/sh

# make image PROFILE=TLWDR4300 PACKAGES="luci luci-i18n-russian kmod-usb-net-rndis kmod-usb2 luci-proto-3g kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-acm usb-modeswitch kmod-rtl8187 kmod-ath9k-htc aircrack-ng reaver python luci-theme-bootstrap nano tcpdump fdisk kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount kmod-fs-vfat kmod-fs-msdos " V=99
make image PROFILE=TLWDR4300 PACKAGES="luci luci-i18n-russian kmod-usb-net-rndis luci-proto-3g kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-acm usb-modeswitch kmod-rtl8187 kmod-ath9k-htc aircrack-ng reaver luci-theme-bootstrap nano tcpdump fdisk e2fsprogs kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount kmod-fs-vfat kmod-fs-msdos" V=99

#make image PROFILE=TLWDR4300 PACKAGES="luci luci-i18n-russian kmod-usb-net-rndis kmod-usb2 luci-proto-3g kmod-usb-serial kmod-usb-serial-option kmod-usb-serial-wwan kmod-usb-acm usb-modeswitch kmod-rtl8187 kmod-ath9k-htc aircrack-ng reaver  luci-theme-bootstrap python nano tcpdump kmod-usb-storage kmod-usb2 kmod-fs-ext4 block-mount" V=99

