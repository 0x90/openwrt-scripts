#!/bin/sh
# Install dependencies for building OpenWRT on Ubuntu Linux.

# Dependencies
apt-get install -y gnupg flex bison gperf libesd0-dev build-essential \
mercurial bzr ecj cvs subversion git-core \
libncurses5-dev zlib1g-dev gawk flex quilt libssl-dev xsltproc libxml-parser-perl \
unzip gettext zip curl libncurses5-dev zlib1g-dev \
gcc-multilib g++-multilib

# i386 arch
#dpkg --add-architecture i386
#apt-get update
#apt-get install ia32-libs


