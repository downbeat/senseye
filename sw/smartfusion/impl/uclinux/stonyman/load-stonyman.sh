#!/bin/sh

module="stonyman"
device="stonyman"
mode="0664"

insmod $module.ko $* || exit 1

rm -f /dev/${device}0

tmp=$(cat /proc/devices|grep -i stonyman);
major=${tmp%% *};

mknod /dev/${device}0 c $major 0

chmod $mode /dev/${device}0
