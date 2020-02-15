#******************************************************************
# combineBitstream.tcl: Tcl script for automating download.bit generation
#
# Example expected dev_path -- repo root of 2020-ectf:
#   /media/sf_Vagrant/2020-ectf/
#******************************************************************

if { $argc != 1 } {
    puts "buildMicroblaze requires the user to provide the following:
    dev_path."
    exit 1
}

set dev_path [lindex $argv 0]
set proj_name [lindex $argv 1]
set worksp "$dev_path/mb"

set sw_mmi "$worksp/Cora-Z7-07S/system_wrapper.mmi"
set sw_bit "$worksp/Cora-Z7-07S/system_wrapper.bit"
set drm_elf "$worksp/drm_audio_fw/Debug/drm_audio_fw.elf"
set output "$dev_path/pl/proj/$proj_name/download.bit"

puts "\nCalling updatemem as follows:
updatemem -force -meminfo \
$sw_mmi \
-bit \
$sw_bit \
-data $drm_elf \
-proc system_i/microblaze_0 -out \
$output\n"

exec updatemem -force -meminfo \
$sw_mmi \
-bit \
$sw_bit \
-data $drm_elf \
-proc system_i/microblaze_0 -out \
$output

puts "Created download.bit at: $output"
