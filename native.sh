#!/bin/sh
# https://github.com/Entware-ng/Entware-ng/wiki/Using-gcc-(native-compilation)
opkg update
opkg install gcc
opkg install busybox ldd make gawk sed
opkg install patch diffutils coreutils-install

#wget -qO- http://pkg.entware.net/binaries/armv7/include/include.tar.gz | tar xvz -C /opt/include
wget -qO- http://pkg.entware.net/binaries/mipsel/include/include.tar.gz | tar xvz -C /opt/include
