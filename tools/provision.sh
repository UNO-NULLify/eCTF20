#! /bin/bash
#
# A bash script to test the front end encription process see also Makefile
#
# Notes:
#
# adds metadata after the 44 byte header
# metadata is b'\x06\x00\x01\x00\x00\x00'  little endian 0600 0100 0000
# RIFF (.wav) header is 44 bytes long

python3 createRegions --region-list USA Canada Japan --outfile region_secrets.json

python3 createUsers --user-list user1:12345678 user2:12345679 user3:12345677 --outfile user_secrets.json

python3 createDevice --region-list Canada USA --region-secrets-path region_secrets.json --user-list user1 user2 --user-secrets-path user_secrets.json --device-dir ./device

gcc -Wall -pedantic -std=c1x -g -o ./device/test test.c

./device/test

#python3 protectSong --region-list USA --region-secrets-path region_secrets.json --outfile test-protect.wav --infile Sound-Bite_One-Small-Step.wav --owner user1 --user-secrets-path user_secrets.json
