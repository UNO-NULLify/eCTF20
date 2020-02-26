#!/usr/bin/env python3
"""
Description: Unprotects the song by getting the metadata struct and decrypting
Use: Once per song
"""
import json
from ctypes import *
import monocypher
import os
from argparse import ArgumentParser

"""
struct { double v; int t; char c;};
struct metadata {
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET]; // 64*160-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
};
"""

# Take in command line arguments.
parser = ArgumentParser(description='main interface to protect songs')
parser.add_argument('--region-secrets-path', help='File location for the region secrets file', required=True)
parser.add_argument('--user-secrets-path', help='File location for the user secrets file', required=True)
parser.add_argument('--debug', action='store_true')

args = parser.parse_args()

class metadata(Structure):
	_fields_ = [('owner_id', c_uint8),  # c_ubyte
		('region_ids', c_uint8 * 64),
		('region_secrets', c_char * 64 * 64),
		('song_name', c_char * 64)
	]

owner_id = ""
region_ids_tmp = []
region_secrets_tmp = []
song_name = ""
with open('audio.drm', 'rb') as file:
	result = []
	x = metadata()
	while file.readinto(x) == sizeof(x):
		owner_id = x.owner_id
		region_ids_tmp.append(x.region_ids)
		region_secrets_tmp.append(x.region_secrets)
		song_name = x.song_name
song_name = song_name.decode("utf-8")

region_ids = []
for i in region_ids_tmp[0]:
	region_ids.append(i)

region_secrets = []
for i in region_secrets_tmp[0]:
	string=""
	for j in i:
		string += j.decode("utf-8").rstrip('\x00')
	region_secrets.append(string)

if(args.debug):
	print("\n\n-- Struct Data -------------------------------------")
	print("owner_id: ", end='')
	print(owner_id)
	print("region_ids: ", end='')
	print(region_ids)
	print("region_secrets: ", end='')
	print(region_secrets)
	print("song_name: ", end='')
	print(song_name)
	print("-- End Struct Data ---------------------------------\n")



#Take input from secret files
regions = json.load(open(os.path.abspath(args.region_secrets_path)))
users = json.load(open(os.path.abspath(args.user_secrets_path)))

# Generate songkey
pin = ""
pin_hash = ""
for u in users["users"]:
	if users["users"][u]["id"] == owner_id:
		pin = bytes(users["users"][u]['pin'], encoding = "utf-8")
		pin_hash = bytes(users["users"][u]['pin_hash'], encoding = "utf-8")
		# I'm getting hw_secret here for hardwareSecretHash so I don't have to do this loop twice
		hw_secret = bytes(users["users"][u]['hw_secret'], encoding = "utf-8")
		break
songName = bytes(song_name, encoding="utf-8")
song_str = (pin_hash + pin + songName).hex()
songkey = monocypher.blake2b(song_str).hex()


if(args.debug):
	print("\n\n-- Song Key Data -----------------------------------")
	print("pin: ", end='')
	print(pin)
	print("pin_hash: ", end='')
	print(pin_hash)
	print("song_str: ", end='')
	print(song_str)
	print("songkey: ", end='')
	print(songkey)
	print("-- End Song Key Data -------------------------------\n")











# Generate regionkey

if(args.debug):
	print("-- Region Key Data ---------------------------------\npin: ", end='')
	print("pin_hash: ", end='')
	print(pin)
	print("-- End Region Key Data -----------------------------\n")







# Generate hardwareSecretHash
hardwareSecretHash = monocypher.blake2b(hw_secret + songName).hex()

if(args.debug):
	print("\n\n-- hardwareSecretHash Data -------------------------\npin: ", end='')
	print("hw_secret: ", end='')
	print(hw_secret)
	print("songName: ", end='')
	print(songName)
	print("hardwareSecretHash: ", end='')
	print(hardwareSecretHash)
	print("-- End hardwareSecretHash Data ---------------------\n")






# END GOAL
# str(songKey.hex())+str(regionKey.hex())+str(hardwareSecretHash),
