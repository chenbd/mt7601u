#!/bin/sh
dmesg -c
insmod src/os/linux/rtutil7601Uap.ko
insmod src/os/linux/mt7601Uap.ko
insmod src/os/linux/rtnet7601Uap.ko
ifconfig ra0 10.0.0.100
