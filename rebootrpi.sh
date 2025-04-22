#!/sbin/sh

# Copyright (C) 2021-2023 KonstaKANG

mount /boot

if [ -f /boot/ramdisk-boot.img ] && [ ! -f /boot/ramdisk-recovery.img ]; then
  mv /boot/ramdisk.img /boot/ramdisk-recovery.img
  mv /boot/ramdisk-boot.img /boot/ramdisk.img
  sed -i 's/^#dtoverlay=vc4-kms-v3d/dtoverlay=vc4-kms-v3d/' /boot/config.txt
fi

umount /boot

exit 0
