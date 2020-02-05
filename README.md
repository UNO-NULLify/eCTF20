# 2020 MITRE Collegiate eCTF UNO Code
[![BCH compliance](https://bettercodehub.com/edge/badge/UNO-NULLify/eCTF20?branch=dev&token=12e66cbb9b0f3fad17e50db1d92c48b8533b2da0)](https://bettercodehub.com/) | [![CodeFactor](https://www.codefactor.io/repository/github/uno-nullify/ectf20/badge?s=35447e9371dcafdd05706cca0eba475aaa7d79a8)](https://www.codefactor.io/repository/github/uno-nullify/ectf20)

This repository contains an example reference system for MITRE's 2020 [Embedded System CTF](http://mitrecyberacademy.org/competitions/embedded/). 
This code is incomplete, insecure, and does not meet MITRE standards for quality.
This code is being provided for educational purposes to serve as a simple example that meets the minimum functional requirements for the 2020 MITRE eCTF competition.
Use this code at your own risk!

## Getting Started
Please see the [Getting Started Guide](getting_started.md).

If you are wanting to use the development server rather than your local machine [see HERE](devserver.md).

## Project structure
The example code is structured as follows

 * `boot-image/` - Contains a stock FSBL, `image.ub`, and `u-boot.elf` for booting the project on the board. The stock FSBL is only provided for the purposes of making the `miPod.bin`, since `bootgen` requires you provide a bootloader when creating a `.bin` image.
 * `docs/` - Contains documentation made with vuepress.
 * `mb/` - Contains example DRM project for running on the soft-core MicroBlaze. See [DRM README](mb/README.md)
 * `miPod/` - Contains example miPod project for running the Linux-side miPod driver. See [miPod README](miPod/README.md)
 * `pl/` - Contains example PL implementation with soft-core MicroBlaze and audio codec. See [PL README](pl/README.md)
 * `tools/` - Contains example provisioning tools. See [tools README](tools/README.md)
 * `vagrant/` - Contains files for configuring the Vagrant environment. See [Vagrant README](vagrant/README.md)
 * `vivado-boards/` - Contains Vivado libraries for the board
 * `Vagrantfile` - Vagrantfile for launching the Vagrant environment - DO NOT CHANGE
 * `sample-audio` - Sample audio files for you to use
 * `docs/` - Contains all documentation for the project
