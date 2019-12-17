#!/bin/bash

AUTHOR=@ArtificialAmateur
VERSION=v0.01

TIME=time-$(date +%Y-%m-%d)
if [[ -e $TIME.log ]] ; then
    i=0
    while [[ -e $TIME-$i.log ]] ; do
        let i++
    done
    TIME=$TIME-$i
fi
touch "$TIME".log

if [ ! -d ".petalinux" ]; then
    printf "You are not in a Petalinux project directory!\n"
    exit 1
fi

printf "NULLify's\nPetalinux Configuration and Build Script %s\n" $VERSION
touch ../"$TIME".log

: '
#-|-------------- Configure Hardware --------------|-

read -p "Use new hardware? (y/n) " hw_choice

case "$hw_choice" in
  y|Y ) read -p "Enter hdf file location: " hdf_local && petalinux-config --get-hw-description $hdf_local;;
esac

if [ ! $? -eq 0 ]; then
    printf "\n\nConfigure Failed!\n"
    exit 1
fi


#-|-------------- Create Component --------------|-

read -p "Create New Component? (y/n) " cmp_choice

case "$cmp_choice" in
  y|Y ) read -p "Enter hdf file location: " hdf_local && petalinux-config --get-hw-description $hdf_local;;
esac

if [ ! $? -eq 0 ]; then
    printf "\n\nCreate Failed!\n"
    exit 1
fi
'

#-|-------------- Configure Petalinux --------------|-

read -p "Configure Petalinux? (y/n) " config_choice

echo -e "petalinux-config:\n" >> ../"$TIME".log
case "$config_choice" in
  y|Y ) (time petalinux-config) 2>> ../"$TIME".log;;
esac

if [ ! $? -eq 0 ]; then
    printf "\n\nConfigure Failed!\n"
    exit 1
fi


#-|-------------- Configure Linux --------------|-

read -p "Configure Linux kernel? (y/n) " linux_choice

echo -e "\n\npetalinux-config -c kernel:\n" >> ../"$TIME".log
case "$linux_choice" in
  y|Y ) (time petalinux-config -c kernel) 2>> ../"$TIME".log;;
esac

if [ ! $? -eq 0 ]; then
    printf "\n\nConfigure Failed!\n"
    exit 1
fi


#-|-------------- Configure RootFS --------------|-

read -p "Configure root filesystem? (y/n) " rootfs_choice

echo -e "\n\npetalinux-config -c rootfs:\n" >> ../"$TIME".log
case "$rootfs_choice" in
  y|Y ) (time petalinux-config -c rootfs) 2>> ../"$TIME".log;;
esac

if [ ! $? -eq 0 ]; then
    printf "\n\nConfigure Failed!\n"
    exit 1
fi


#-|-------------- Clean Build --------------|-

read -p "Clean previous builds? (y/n) " proper_choice

case "$proper_choice" in
  y|Y ) petalinux-build -x mrproper;;
esac

if [ ! $? -eq 0 ]; then
    printf "\n\nClean Failed!\n"
    exit 1
fi


#-|-------------- Build --------------|-

printf "\nBuilding system...\n"
echo -e "\n\npetalinux-build:\n" >> ../"$TIME".log
(time petalinux-build) 2>> ../"$TIME".log

if [ ! $? -eq 0 ]; then
    printf "\n\nBuild Failed!\n"
    exit 1
fi


#-|-------------- Package --------------|-

printf "\nPackaging system...\n"
echo -e "\n\npetalinux-package:\n" >> ../"$TIME".log
(time petalinux-package --boot --force --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/system_wrapper.bit --u-boot) 2>> ../"$TIME".log

if [ ! $? -eq 0 ]; then
    printf "\n\nPackage Failed!\n"
    exit 1
fi


#-|-------------- Done --------------|-

printf "\nDone!!!\n"
printf "\nFollowing Steps:
        0. Partition SD card with 512MB fat32 BOOT and the rest ext4 ROOTFS.
        1. Copy ./images/linux/BOOT.BIN and ./images/linux/image.ub to your SD card's 'BOOT' partition.
        2. Copy ./images/linux/rootfs.cpio to your SD card's 'ROOTFS' partition.
        3. Inside your 'ROOTFS' parition, run 'sudo pax -rvf rootfs.cpio'.
        4. Insert SD card into Cora-7Z, plug Cora-Z7 into computer, run 'minicom -b 115200 /dev/[INSERT_TTY_HERE]'.

        Congratulations! You should now see Linux booting up on your serial terminal.\n"

