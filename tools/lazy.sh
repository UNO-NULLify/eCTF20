#!/bin/bash

####################
# @ArtificialAmateur
# v 0.1
####################

echo "
  B.I.R.D.S
  
  Build &
  Implementation
  Reference
  Design
  Script
"

if [-z "$IN_VAGRANT" ]; then
  echo 'Cannot execute the current script outside the vagrant';
  exit 1
fi

if [ ! -d ../.git ]; then
  "You're not in the tools directory!"
  exit 1
fi

build_reference() {
  mkdir global_provisioning/audio -p
  ./createRegions --region-list "United States" "Japan" "Australia" --outfile global_provisioning/region.secrets
  ./createUsers --user-list "drew:1234567890" "ben:00000000" "misha:0987654321" --outfile global_provisioning/user.secrets
  ./protectSong --region-list "United States" --region-secrets-path global_provisioning/region.secrets --outfile global_provisioning/audio/demo.drm --infile ../sample-audio/Sound-Bite_One-Small-Step.wav --owner "drew" --user-secrets-path global_provisioning/user.secrets
  ./createDevice --region-list "United States" "Japan" --region-secrets-path global_provisioning/region.secrets --user-list "drew" "ben" "misha" --user-secrets-path global_provisioning/user.secrets --device-dir device1
  ./buildDevice -p /ectf/ -n test -bf all -secrets_dir device1/
  ./packageDevice ../boot-image/template.bif device1/miPod.bin /ectf/mb/Cora-Z7-07S/download.bit
  printf "\nInsert SD Card. Pass-through to VM."
  printf "\nPress any key to continue...\n"
  while [ true ] ; do
    read -t 3 -n 1
    if [ $? = 0 ] ; then
      exit $?;
    fi
  done
  ./deployDevice /dev/sdb ../BOOT.BIN global_provisioning/audio/ ../mb/miPod/Debug/miPod.elf ../boot-image/image.ub --mipod-bin-path device1/miPod.bin
  printf "\nFinished building and deploying!"
}

read -p "Build default reference design? (y/n) " choice
case "$choice" in 
  y|Y ) build_reference
esac
