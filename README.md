# NULLify's Cora Z7-07S Petalinux BSP Project

## Built for Petalinux 2017.4

This petalinux project targets the Vivado block diagram project found here: https://github.com/Digilent/Cora-Z7-07S-base-linux.

#### Warning: You should only use this repo when it is checked out on a release tag

## BSP Features

The project includes the following features by default:

* Ethernet with Unique MAC address and DHCP support (see known issues)
* USB Host support
* UIO drivers for onboard buttons and LEDs
* SSH server
* Build essentials package group for on-board compilation using gcc, etc. 
* U-boot environment variables can be overriden during SD boot by including uEnv.txt
  in the root directory of the SD card (see u-boot documentation).

## Quick-Start Guide

This guide will walk you through some basic steps to get you booted into Linux and rebuild the Petalinux project. After completing it, you should refer
to the Petalinux Reference Guide (UG1144) from Xilinx to learn how to do more useful things with the Petalinux toolset. Also, refer to the Known Issues 
section above for a list of problems you may encounter and work arounds.

This guide assumes you are using Ubuntu 16.04.3 LTS. Digilent highly recommends using Ubuntu 16.04.x LTS, as this is what we are most familiar with, and 
cannot guarantee that we will be able to replicate problems you encounter on other Linux distributions. Virtual machines with 150-200GB allocated are a good
way to manage the OS and library dependencies of Petalinux rather than going through the difficult process of setting up dual-boot on physical machines.

### Install the Petalinux tools

Digilent has put together this quick installation guide to make the petalinux installation process more convenient. Note it is only tested on Ubuntu 16.04.3 LTS. 

First install the needed dependencies by opening a terminal and running the following:

```
sudo apt install python3 tofrodos iproute2 gawk xvfb gcc git make net-tools libncurses5-dev tftpd \
                 zlib1g-dev zlib1g-dev:i386 libssl-dev flex bison libselinux1 gnupg wget diffstat \
                 chrpath socat xterm autoconf libtool tar unzip texinfo gcc-multilib build-essential \
                 libsdl1.2-dev libglib2.0-dev screen pax gzip
reboot
```

Create the petalinux installation directory next:

```
sudo -s
mkdir -p /opt/pkg/petalinux
chown <your_user_name> /opt/pkg/
chgrp <your_user_name> /opt/pkg/
chgrp <your_user_name> /opt/pkg/petalinux/
chown <your_user_name> /opt/pkg/petalinux/
exit
```

Finally, download the petalinux installer from Xilinx and run the following (do not run as root):

```
cd ~/Downloads
./petalinux-v2017.4-final-installer.run /opt/Xilinx/Petalinux
```

Follow the onscreen instructions to complete the installation.

### Source the petalinux tools

Whenever you want to run any petalinux commands, you will need to first start by opening a new terminal and "sourcing" the Petalinux environment settings:

```
source /opt/Xilinx/Petalinux/settings.sh
source /opt/Xilinx/SDK/2017.4/settings64.sh
```

### Download the petalinux project

There are two ways to obtain the project. If you plan on version controlling your project you should clone this repository using the following:

```
git clone --recursive https://github.com/UNO-NULLify/eCTF20.git
```

### Build the petalinux project

Run the following command to build the petalinux project:

```
bash ../Tools/pcbs.sh
```

### Boot the newly built files from SD 

Copy the BOOT.BIN file found in ./images/linux/ to your SD Card's BOOT partition.

Eject the SD card from your computer, then do the following:

1. Insert the microSD into the Cora Z7
2. Attach a power source and select it with JP3 (note that using USB for power may not provide sufficient current)
3. If not already done to provide power, attach a microUSB cable between the computer and the Cora Z7
4. Open a terminal program (such as minicom) and connect to the Cora Z7 with 115200/8/N/1 settings (and no Hardware flow control). The Cora Z7 UART typically shows up as /dev/ttyUSB1
5. Optionally attach the Cora Z7 to a network using ethernet.
6. Press the SRST button to restart the Cora Z7. You should see the boot process at the terminal and eventually a root prompt.

### Prepare for release

This section is only relevant for those who wish to upstream their work or version control their own project correctly on Github.
Note the project should be released configured as initramfs for consistency, unless there is very good reason to release it with SD rootfs.

```
petalinux-build -x distclean
petalinux-build -x mrproper
petalinux-package --bsp --force --output ../releases/Petalinux-Cora-Z7-07S-20XX.X-X.bsp -p ./
cd ..
git status # to double-check
git add .
git commit
git push
```
Finally, open a browser and go to github to push your .bsp as a release.



