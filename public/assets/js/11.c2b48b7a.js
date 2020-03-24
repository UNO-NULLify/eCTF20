(window.webpackJsonp=window.webpackJsonp||[]).push([[11],{217:function(e,t,o){"use strict";o.r(t);var i=o(0),a=Object(i.a)({},(function(){var e=this,t=e.$createElement,o=e._self._c||t;return o("ContentSlotsDistributor",{attrs:{"slot-key":e.$parent.slotKey}},[o("h1",{attrs:{id:"technical-reference"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#technical-reference"}},[e._v("#")]),e._v(" Technical Reference")]),e._v(" "),o("p",[e._v("Below is the overview of how to set up the reference implementation for the 2020 Collegiate eCTF.")]),e._v(" "),o("p",[e._v("Please note: if any step fails, it is highly unlikely that the process will get back on track by continuing to future steps.")]),e._v(" "),o("h2",{attrs:{id:"creating-your-own-fork"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#creating-your-own-fork"}},[e._v("#")]),e._v(" Creating Your Own Fork")]),e._v(" "),o("p",[e._v("We suggest you create a fork of this repo so that you can begin to develop\nyour solution to the eCTF. To do this, you must fork the repo, change your fork to the "),o("code",[e._v("origin")]),e._v(", and\nthen add the MITRE repo as another remote. Follow these steps below.")]),e._v(" "),o("ol",[o("li",[e._v("Clone the eCTF repository using ssh or https")])]),e._v(" "),o("div",{staticClass:"language-bash extra-class"},[o("pre",{pre:!0,attrs:{class:"language-bash"}},[o("code",[o("span",{pre:!0,attrs:{class:"token function"}},[e._v("git")]),e._v(" clone https://github.com/mitre-cyber-academy/2020-ectf-insecure-example --recursive\n")])])]),o("ol",{attrs:{start:"2"}},[o("li",[e._v("Change the current origin remote to another name")])]),e._v(" "),o("div",{staticClass:"language-bash extra-class"},[o("pre",{pre:!0,attrs:{class:"language-bash"}},[o("code",[o("span",{pre:!0,attrs:{class:"token function"}},[e._v("git")]),e._v(" remote "),o("span",{pre:!0,attrs:{class:"token function"}},[e._v("rename")]),e._v(" origin mitre\n")])])]),o("ol",{attrs:{start:"3"}},[o("li",[o("p",[e._v("Fork the MITRE repo on github (Note that you probably want to make the repo private for now so\nthat other teams cannot borrow your development ideas)")])]),e._v(" "),o("li",[o("p",[e._v("Add the fork as the new origin")])])]),e._v(" "),o("div",{staticClass:"language-bash extra-class"},[o("pre",{pre:!0,attrs:{class:"language-bash"}},[o("code",[o("span",{pre:!0,attrs:{class:"token function"}},[e._v("git")]),e._v(" remote "),o("span",{pre:!0,attrs:{class:"token function"}},[e._v("add")]),e._v(" origin "),o("span",{pre:!0,attrs:{class:"token operator"}},[e._v("<")]),e._v("git_path"),o("span",{pre:!0,attrs:{class:"token operator"}},[e._v(">")]),e._v(".git\n")])])]),o("p",[e._v("You can now fetch and push as you normally would using "),o("code",[e._v("git fetch origin")]),e._v(" and "),o("code",[e._v("git push origin")]),e._v(".\nIf we push out updated code, you can fetch this new code using "),o("code",[e._v("git fetch mitre")]),e._v(".")]),e._v(" "),o("h2",{attrs:{id:"download-xilinx-tools"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#download-xilinx-tools"}},[e._v("#")]),e._v(" Download Xilinx Tools")]),e._v(" "),o("p",[e._v("We require using the two main Xilinx tools for the development of your\ndesign: Vivado and the Xilinx Software Development Kit (SDK). Vivado is used to create the\nProgrammable Logic design. For the reference design, this includes the Xilinx MicroBlaze, a soft\nmicroprocessor core. Applications for the MicroBlaze can be written using the Xilinx SDK. More\ninformation about these tools will be discussed when building the reference design.")]),e._v(" "),o("ol",[o("li",[o("a",{attrs:{href:"https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html",target:"_blank",rel:"noopener noreferrer"}},[e._v("Go to the Xilinx website"),o("OutboundLink")],1)]),e._v(" "),o("li",[e._v("Download the 2017.4 version -> All OS Installer Single-File Download")]),e._v(" "),o("li",[e._v('Login or create a Xilinx account. Note: you can use your college email and location as your "corporation"')]),e._v(" "),o("li",[e._v("Place the downloaded zip file into the root directory of your project - Vagrant will install it on the VM")])]),e._v(" "),o("h2",{attrs:{id:"vagrant"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#vagrant"}},[e._v("#")]),e._v(" Vagrant")]),e._v(" "),o("p",[e._v("In order to manage dependencies and allow for easier cross-platform development, a VM provisioned by\n"),o("a",{attrs:{href:"https://vagrantup.com",target:"_blank",rel:"noopener noreferrer"}},[e._v("Vagrant"),o("OutboundLink")],1),e._v(" will be used for building and provisioning the design. Please see\nthe "),o("router-link",{attrs:{to:"/technical/vagrant/"}},[e._v("Vagrant README")]),e._v(" file for information about setting up the Vagrant environment before\nproceeding. Setting up the vagrant machine will take at least 1 hour and should be completed in one sitting\nto avoid common errors that occur when pausing and resuming the setup process.\nPlease allocate enough time for this process and be sure the follow the steps in the "),o("code",[e._v("README")]),e._v("\ncarefully.")],1),e._v(" "),o("h2",{attrs:{id:"building-the-reference-design"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#building-the-reference-design"}},[e._v("#")]),e._v(" Building the Reference Design")]),e._v(" "),o("p",[e._v("This section assumes that you have a Vagrant development\nenvironment running as described in the "),o("code",[e._v("vagrant")]),e._v(" folder, and that you have read through all of the\n"),o("code",[e._v("README")]),e._v(" files in each subdirectory.")]),e._v(" "),o("p",[e._v("To build the reference design for the first time, follow these steps:")]),e._v(" "),o("ol",[o("li",[e._v("Ensure that all steps to provision the development environment were completed as described\nin the "),o("router-link",{attrs:{to:"/technical/vagrant/"}},[e._v("Vagrant README")]),e._v(" file.")],1),e._v(" "),o("li",[e._v("Log in to the virtual machine using the credentials "),o("code",[e._v("vagrant:vagrant")]),e._v(".")]),e._v(" "),o("li",[e._v("Open a terminal and "),o("code",[e._v("cd")]),e._v(" to the "),o("code",[e._v("tools")]),e._v(" directory.")]),e._v(" "),o("li",[e._v("Run "),o("code",[e._v("mkdir global_provisioning/audio -p")]),e._v(" to make a directory called "),o("code",[e._v("global_provisioning")]),e._v(", with a subfolder of "),o("code",[e._v("audio")]),e._v(" for audio files.")]),e._v(" "),o("li",[e._v("Run "),o("code",[e._v('./createRegions --region-list "United States" "Japan" "Australia" --outfile global_provisioning/region.secrets')]),e._v(" script to create the geographical regions (USA, Japan, and Australia in this case)")]),e._v(" "),o("li",[e._v("Run "),o("code",[e._v('./createUsers --user-list "drew:1234567890" "ben:00000000" "misha:0987654321" --outfile global_provisioning/user.secrets')]),e._v(' script to create the 3 users ("drew", "ben" and "misha") with their pins.')]),e._v(" "),o("li",[e._v("Run "),o("code",[e._v('./protectSong --region-list "United States" --region-secrets-path global_provisioning/region.secrets --outfile global_provisioning/audio/demo.drm --infile ../sample-audio/Sound-Bite_One-Small-Step.wav --owner "drew" --user-secrets-path global_provisioning/user.secrets')]),e._v(' to provision a song for the United States region, with "drew" as an owner.')]),e._v(" "),o("li",[e._v("Run "),o("code",[e._v('./createDevice --region-list "United States" "Japan" --region-secrets-path global_provisioning/region.secrets --user-list "drew" "ben" "misha" --user-secrets-path global_provisioning/user.secrets --device-dir device1')]),e._v('. This will create a device for the "United States" and "Japan" regions and provision the device for "drew", "ben", and "misha", allowing each of them to log in. Any output files will be put into a "device" directory.')]),e._v(" "),o("li",[e._v("Run the device by running "),o("code",[e._v("./buildDevice -p /ectf/ -n test -bf all -secrets_dir device1/")]),e._v(" (note that this takes a long time to run the first time you run it! Please be patient.) This will create a Vivado project called "),o("code",[e._v("test")]),e._v(" and use the "),o("code",[e._v("device1")]),e._v(" secrets directory.")]),e._v(" "),o("li",[e._v("Run "),o("code",[e._v("./packageDevice ../boot-image/template.bif device1/miPod.bin /ectf/mb/Cora-Z7-07S/download.bit")]),e._v(" to create a "),o("code",[e._v("miPod.BIN")]),e._v(" file with your bitstream.")]),e._v(" "),o("li",[e._v("Insert the SD card into the SD card reader, and insert that into your laptop.\nEnsure that this is passed through to the VM through the VirtualBox USB options")]),e._v(" "),o("li",[e._v("Run the "),o("code",[e._v("./deployDevice /dev/sdb ../BOOT.BIN global_provisioning/audio/ ../mb/miPod/Debug/miPod.elf ../boot-image/image.ub --mipod-bin-path device1/miPod.bin")]),e._v(" script.")]),e._v(" "),o("li",[e._v("Remove the SD card and place it into the board.")]),e._v(" "),o("li",[e._v("Ensure that the jumper is connecting both pins of JP2 (this allows the device to boot from the SD card)")]),e._v(" "),o("li",[e._v("Connect the Cora board to the computer. Ensure that the board (Digilent Adept USB Device) is passed through to the VM.")]),e._v(" "),o("li",[e._v("See the "),o("strong",[e._v("Accessing UART From Inside the VM")]),e._v(" section of the "),o("router-link",{attrs:{to:"/technical/vagrant/"}},[e._v("Vagrant README")]),e._v(" file to start minicom.")],1),e._v(" "),o("li",[e._v("Press the "),o("code",[e._v("RESET")]),e._v(" button on the board to reset it. You should now see the board boot and enter a Linux shell.")]),e._v(" "),o("li",[o("code",[e._v("cd")]),e._v(" to the "),o("code",[e._v("music")]),e._v(" folder.")]),e._v(" "),o("li",[e._v("Run the "),o("code",[e._v("./miPod.elf")]),e._v(" application, and run "),o("code",[e._v("help")]),e._v(" to see a list of all possible commands.")])]),e._v(" "),o("h2",{attrs:{id:"working-with-the-xilinx-tools"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#working-with-the-xilinx-tools"}},[e._v("#")]),e._v(" Working With the Xilinx Tools")]),e._v(" "),o("p",[e._v("You can launch "),o("code",[e._v("vivado")]),e._v(" to modify the reference implementation programmable logic (PL).\n"),o("code",[e._v("vivado")]),e._v(" will also allow you to generate the bitstream and export the hardware to the SDK.\nThe SDK can be launched from Vivado, or directly from the command line to allow you to modify\nthe DRM project runing on the MicroBlaze and the miPod project running on the Linux side.")]),e._v(" "),o("h3",{attrs:{id:"sdk-development-tips"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#sdk-development-tips"}},[e._v("#")]),e._v(" SDK Development Tips")]),e._v(" "),o("p",[e._v("When first opening the SDK GUI, the project workspace should be set to the "),o("code",[e._v("mb/")]),e._v(" directory. Import\nall three projects (Cora-Z7-07S, drm_audio_fw, and drm_audio_fw_bsp) and then import the miPod\nproject. All four projects should appear in the Project Explorer to the left. If the initial build\nfails, select "),o("code",[e._v("Project > Clean...")]),e._v(" to clean and rebuild the project.")]),e._v(" "),o("h4",{attrs:{id:"manual-sdk-building"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#manual-sdk-building"}},[e._v("#")]),e._v(" Manual SDK Building")]),e._v(" "),o("p",[e._v("While teams should regularly check that the full build and provision process works using the\nprovisioning tools, it may be faster to build and flash the device manually.")]),e._v(" "),o("p",[e._v("To update the miPod:")]),e._v(" "),o("ol",[o("li",[e._v("Save all files to build the project. Ensure in the Console window that the build succeeded.")]),e._v(" "),o("li",[e._v("Copy the file "),o("code",[e._v("miPod/Debug/miPod.elf")]),e._v(" to "),o("code",[e._v("~/music/miPod")]),e._v(" on the board (either over minicom or by USB drive)")])]),e._v(" "),o("p",[e._v("To update the DRM:")]),e._v(" "),o("ol",[o("li",[e._v("Save all files to build the project. Ensure in the Console window that the build succeeded.")]),e._v(" "),o("li",[e._v("Press the "),o("code",[e._v("Program FPGA")]),e._v(" button on the upper bar or "),o("code",[e._v("Xilinx > Program FPGA")])]),e._v(" "),o("li",[e._v("Ensure that the the ELF file to initialize in Block RAM for microblaze_0 is the drm_audio_fw.elf.\nIf it is anything else, click the box and then the drop down arrow that appars to the right.\nThe ELF file should appear. If it does not, ensure that the build succeeded.")]),e._v(" "),o("li",[e._v('Choose Program. A dialog box saying "Initializing Bitstream with ELF data" should appear. If it\nDisappears without an error message, the LED LD0 is red, and "MB> Audio DRM Module has Booted"\nis printed over UART, it successfully programmed.\n'),o("em",[e._v("NOTE: Occasionally after multiple calls to Program FPGA, the FPGA does not actually program.\nNo error message prints, but the message over UART does not appear. If this happens, continue\nto the next step")])]),e._v(" "),o("li",[e._v("Using the previous step, you should be able to reprogram the FPGA without rebooting the device.\nHowever, these changes will not persist across power cycles. To accomplish this, insert the\nmicro SD card and select "),o("code",[e._v("Xilinx > Create Boot Image")]),e._v(" in the SDK. The output path should be set to\n"),o("code",[e._v("<SD boot partition>/miPod.BIN")]),e._v(". If you have an existing BIF file, you can import from that.\nOtherwise, the following partitions should be added ("),o("strong",[e._v("NOTE: THE ORDER MATTERS")]),e._v("):\n1. "),o("code",[e._v("boot-image/fsbl.elf")]),e._v(" - a dummy bootloader that will never run. The real bootloader is\nencrypted for your team in "),o("code",[e._v("boot-image/BOOT.BIN")]),e._v(", however the Xilinx tools require a bootloader.\n2. "),o("code",[e._v("mb/Cora-Z7-07S/download.bit")]),e._v(" - the bitstream loaded with the DRM ELF (created by step 4)")]),e._v(" "),o("li",[e._v("Insert the SD card into the Cora board and the RESET button next to the power jack. When Linux finishes\nbooting, the MicroBlaze should have the updated bitstream.")])])])}),[],!1,null,null,null);t.default=a.exports}}]);