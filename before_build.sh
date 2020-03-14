#!/bin/bash
cd /home/runner/openwrt

# Enter your commands here, e.g.
# echo "Start build!"
PWD_build=~/work/build-openwrt/build-openwrt
cp -r $PWD_build/files .

ls /dev
sudo mount -o remount,noatime,nobarrier,data=writeback,defaults /dev/sda /

make defconfig
