#!/bin/sh
echo rtnet7601Usta.ko
modprobe --dump-modversions src/os/linux/rtnet7601Uap.ko|grep le_layout
echo rtutil7601Usta.ko
modprobe --dump-modversions src/os/linux/rtutil7601Uap.ko|grep le_layout
echo mt7601Uap.ko
modprobe --dump-modversions src/os/linux/mt7601Uap.ko|grep le_layout

