#! /bin/bash
#
# A bash script to test the front end encription process see also Makefile
#
# Notes:
#
# adds metadata after the 44 byte header
# metadata is b'\x06\x00\x01\x00\x00\x00'  little endian 0600 0100 0000
# RIFF (.wav) header is 44 bytes long

# generate test data

read -p "Clean all working files? (Warning: This will delete all uncommitted changes) (y/n) " choice
case "$choice" in 
  y|Y ) printf cd ../; git reset --hard; git clean -d -fx; cd ./tools; make clean  
  ;;
  *) echo "Commit your changes before running this script."
     exit 1
  ;;
esac

mkdir -p provision_test/audio

python3 makeUsers.py

if [ ! $? -eq 0 ]; then
    printf "\nERROR: %s\n" "makeUsers Failed!"
    exit 1
  fi

  echo "User bank created in test_users.txt" 

python3 makeRegions.py

if [ ! $? -eq 0 ]; then
    printf "\nERROR: %s\n" "makeRegions Failed!"
    exit 1
  fi

  echo "Region bank created in test_regions.txt" 

# end generate test data

python3 createRegions --region-list $(cat ./provision_test/test_regions.txt) \
                      --outfile ./provision_test/region_secrets.json 
                      # USA Canada Japan

if [ ! $? -eq 0 ]; then
    printf "\nERROR: %s\n" "createRegions Failed!"
    exit 1
  fi

  echo "Provisioned regions created in ./provision_test/region_secrets.json" 

python3 createUsers --user-list $(cat ./provision_test/test_users.txt) \
                    --outfile ./provision_test/user_secrets.json

if [ ! $? -eq 0 ]; then
    printf "\nERROR: %s\n" "createUsers Failed!"
    exit 1
  fi

  echo "Provisioned regions created in ./provision_test/user_secrets.json"

#Compile Song encription
echo "Compiling encryption scripts"
gcc -Wall -pedantic -std=c1x -g -o  ./encryptFile encryptFile.c -lsodium
gcc -Wall -pedantic -std=c1x -g -o  ./decryptFile decryptFile.c -lsodium
#End Compile Song encription

# Generate Test Song

read -p "Generate Test Audio? (y/n) " choice
case "$choice" in 
  y|Y ) python3 makeAudio.py

    python3 protectSong --region-list USA Canada \
                        --region-secrets-path ./provision_test/region_secrets.json \
                        --outfile ./provision_test/audio/test-protect.drm \
                        --infile ./provision_test/test.wav \
                        --owner $(cat ./provision_test/test_users.txt | sed 's/:[0-9]*//g' | awk '{print $1}') \
                        --user-secrets-path ./provision_test/user_secrets.json

    if [ ! $? -eq 0 ]; then
        printf "\nERROR: %s\n" "protectSong Failed!"
        exit 1
      fi
  SONG="./provision_test/test.wav"
  echo "Protected song created in $SONG"
    
  ;;
  *) echo "Using privided audio sample."
    python3 protectSong --region-list USA Canada \
                        --region-secrets-path ./provision_test/region_secrets.json \
                        --outfile ./provision_test/audio/test-protect-small-step.drm \
                        --infile ../sample-audio/Sound-Bite_One-Small-Step.wav \
                        --owner $(cat ./provision_test/test_users.txt | sed 's/:[0-9]*//g' | awk '{print $1}') \
                        --user-secrets-path ./provision_test/user_secrets.json

    if [ ! $? -eq 0 ]; then
        printf "\nERROR: %s\n" "protectSong Failed!"
        exit 1
      fi
  SONG="./provision_test/test-protect-small-step.wav"
  echo "Protected song created in $SONG"

  esac
# End Generate Test Song

# Create Device
python3 createDevice --region-list Canada USA \
                     --region-secrets-path ./provision_test/region_secrets.json \
                     --user-list $(cat ./provision_test/test_users.txt | sed 's/:[0-9]*//g') \
                     --user-secrets-path ./provision_test/user_secrets.json \
                     --device-dir ./device

if [ ! $? -eq 0 ]; then
  printf "\nERROR: %s\n" "createDevice Failed!"
  exit 1
fi

#Build Device
printf "\n\nRunning buildDevice...\n"  
(./buildDevice -p ../ -n test -bf all -secrets_dir device/)

if [ ! $? -eq 0 ]; then
  printf "\nERROR: %s\n" "buildDevice Failed!"
  exit 1
fi

#Package Device
printf "\n\nRunning packageDevice...\n"
(time ./packageDevice ../boot-image/template.bif device/miPod.bin ../mb/Cora-Z7-07S/download.bit)

if [ ! $? -eq 0 ]; then
  printf "\nERROR: %s\n" "packageDevice Failed!"
  exit 1
fi 

  printf "\nInsert SD Card. Pass-through to VM."
  printf "\nPress any key to continue...\n"
  while [ true ] ; do
    read -t 3 -n 1
    if [ $? != 0 ] ; then
      exit $?;
    fi
  done
  
  #Deploy Device
  printf "\n\nRunning deployDevice...\n"  
    
  read -p "Are you using a MITRE-provided board? (y/n) " choice
  case "$choice" in 
    y|Y )
           cp ../boot-image/uno_design_phase_BOOT.BIN ../BOOT.BIN
           ;;
    n|N ) 
           cp ../boot-image/purchased_boards_BOOT.BIN ../BOOT.BIN
           ;;
  esac
  
  ./deployDevice /dev/sdb ../BOOT.BIN ./provision_test/audio ../mb/miPod/Debug/miPod ../boot-image/image.ub --mipod-bin-path device/miPod.bin 

  if [ ! $? -eq 0 ]; then
    printf "\nERROR: %s\n" "deployDevice Failed!"
    exit 1
  fi
  
  printf "\nFinished building and deploying!"

# Time to Reverse the process

# See make test

exit 0
