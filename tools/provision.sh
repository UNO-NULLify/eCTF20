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

#python3 makeUsers.py
# python3 makeRegions.py

# end generate test data

python3 createRegions --region-list USA Canada Japan --outfile region_secrets.json

python3 createUsers --user-list user1:12345678 user2:12345679 user3:12345677 --outfile user_secrets.json

#python3 createUsers --user-list $(cat test_users.txt) --outfile user_secrets.json

#python3 createDevice --region-list Canada USA --region-secrets-path region_secrets.json --user-list $(cat test_users.txt | awk '{print $1 " " $2}' | sed 's/:/ /g' | awk '{print $1 " " $3}') --user-secrets-path user_secrets.json --device-dir ./device

# Generate Test Song

#python3 makeAudio.py

# End Generate Test Song


gcc -Wall -pedantic -std=c1x -g -o  ./encryptFile encryptFile.c -lsodium
gcc -Wall -pedantic -std=c1x -g -o  ./decryptFile decryptFile.c -lsodium


python3 newProtectSong --region-list USA Canada --region-secrets-path region_secrets.json --outfile test-protect.wav --infile ../sample-audio/Sound-Bite_One-Small-Step.wav --owner user1 --user-secrets-path user_secrets.json




#python3 protectSong --region-list USA Canada --region-secrets-path region_secrets.json --outfile test-protect.wav --infile Sound-Bite_One-Small-Step.wav --owner $(cat test_users.txt | awk '{print $1}' | sed 's/:/ /g' | awk '{print $1}') --user-secrets-path user_secrets.json



# Time to Reverse the process

#gcc -Wall -pedantic -std=c1x -g -o  ./device/test test.c -lsodium

#./device/test
