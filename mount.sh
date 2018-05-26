#!/bin/bash
# Copyright Tj <hacker@iam.tj> September 2017
# Licensed on the terms of the GNU General Public License version 3
# Copies a (presumed little-endian) JFFS2 image into a virtual MTD in RAM
# and mounts it so its file-system can be explored
#
# If the JFFS2 image is big-endian convert it using jffs2dump from the mtd-utils package:
#   jffs2dump --big-endian <input-file.be.jffs2> --endian-convert=<output-file.le.jffs2>
#
set -e

usage()
{
  cat << EOT 
# Usage: ./mount.sh <little-endian.jffs2>
#
# e.g: sudo ./mount.sh RV134W.le.jffs2
EOT

if [ $# -eq - ]; then
  usage
  exit 0
fi

if [ ! -f "$1" ]; then
  echo "Error: cannot find '$1'"
  exit 1
fi

# MTD device
DEV=${DEV:-/dev/mtdblock0}
# mountpoint
MP=${MP:-/mnt/cisco/RV134W}
# symlink
SL=${SL:-$(pwd)/${MP##*/}}

echo "Writing $1 to $DEV and mounting to $MP with symlink $SL"

# load required modules
modprobe jffs2
modprobe mtdram total_size=32768 erase_size=256
modprobe mtdblock

# ensure the MTD block device node exists (should be created by the module)
if [ ! -e $DEV ]; then
  mknod $DEV b 31 0
fi
# ensure the mountpoint exists
if [ ! -d $MP ]; then
  mkdir -p $MP
fi
# copy the contents of the JFFS2 image file into the RAM-based MTD
dd if="$1" of="$MP"
# mount the RAM MTD into the file system
mount -t jffs2 "$DEV" "$MP"
# create a symbolic link in this directory to the mountpoint
ln -sf "$MP" "$SL"
