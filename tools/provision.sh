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

mkdir provision_test

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

# Generate Test Song

read -p "Generate Test Audio? (y/n) " choice
case "$choice" in 
  y|Y ) python3 makeAudio.py

    python3 protectSong --region-list USA Canada \
                        --region-secrets-path ./provision_test/region_secrets.json \
                        --outfile ./provision_test/test-protect.wav \
                        --infile ./provision_test/test.wav \
                        --owner $(cat ./provision_test/test_users.txt | sed 's/:[0-9]*//g' | awk '{print $1}') \
                        --user-secrets-path ./provision_test/user_secrets.json

    #awk '{print $1}' | sed 's/:/ /g'
    # Sound-Bite_One-Small-Step.wav

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
                        --outfile ./provision_test/test-protect-small-step.wav \
                        --infile ../sample-audio/Sound-Bite_One-Small-Step.wav \
                        --owner $(cat ./provision_test/test_users.txt | sed 's/:[0-9]*//g' | awk '{print $1}') \
                        --user-secrets-path ./provision_test/user_secrets.json

    #awk '{print $1}' | sed 's/:/ /g'
    # Sound-Bite_One-Small-Step.wav

    if [ ! $? -eq 0 ]; then
        printf "\nERROR: %s\n" "protectSong Failed!"
        exit 1
      fi
  SONG="./provision_test/test-protect-small-step.wav"
  echo "Protected song created in $SONG"

  esac
# End Generate Test Song


    

python3 createDevice --region-list Canada USA \
                     --region-secrets-path ./provision_test/region_secrets.json \
                     --user-list $(cat ./provision_test/test_users.txt | sed 's/:[0-9]*//g') \
                     --user-secrets-path ./provision_test/user_secrets.json \
                     --device-dir ./device

if [ ! $? -eq 0 ]; then
  printf "\nERROR: %s\n" "createDevice Failed!"
  exit 1
fi

#printf "\n\nRunning buildDevice...\n"  
#(./buildDevice -p /ectf/ -n test -bf all -secrets_dir ./device)
#
#if [ ! $? -eq 0 ]; then
#  printf "\nERROR: %s\n" "buildDevice Failed!"
#  exit 1
#fi 

# Time to Reverse the process

#gcc -Wall -pedantic -std=c1x -g -o  ./device/test test.c -lsodium

#./device/test

exit 0
