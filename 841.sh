#!/bin/sh

#make image PROFILE=TLWR841 PACKAGES="luci luci-i18n-russian luci-theme-bootstrap nano" V=99
make image PROFILE=TLWR841 PACKAGES="uhttpd luci luci-i18n-russian luci-theme-bootstrap luci-proto-ppp tcpdump netcat wpad"


