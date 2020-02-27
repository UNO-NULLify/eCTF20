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
from subprocess import call

# Constants for struct
MAX_USERS = 64
MAX_SONG_NAME = 64
MAX_REGION_SZ = 64
MAX_REGIONS = 64
MAX_REGION_SECRET = 64
MAC = 32

# Take in command line arguments.
parser = ArgumentParser(description='main interface to protect songs')
parser.add_argument('--encrypted-song-path', help='File location for the encrypted song file', required=True)
parser.add_argument('--region-secrets-path', help='File location for the region secrets file', required=True)
parser.add_argument('--user-secrets-path', help='File location for the user secrets file', required=True)
parser.add_argument('--debug', action='store_true')

args = parser.parse_args()

"""
struct metadata {
    uint8_t owner_id; // 1-Byte
    uint8_t region_ids[MAX_REGIONS]; // 64-Bytes
    char region_secrets[MAX_REGIONS][MAX_REGION_SECRET + MAC]; // 64*96-Bytes
    char song_name[MAX_SONG_NAME]; // 64-Bytes
    long int endFullSong;
    char sharedInfo[MAX_USERS][64 + MAC]; // [64-Bytes of Users to share] [32 byte key (stored as hex) + room for MAC]
};
"""

class metadata(Structure):
	_fields_ = [('owner_id', c_uint8),  # c_ubyte
        ('region_ids', c_uint8 * MAX_REGIONS),
		('region_secrets', c_char * (MAX_REGION_SECRET + MAC) * MAX_REGIONS),
		('song_name', c_char * MAX_SONG_NAME),
		('endFullSong', c_long),
		('sharedInfo', c_char * (MAX_USERS * (64 + MAC)))
	]

owner_id = ""
region_ids_tmp = []
region_secrets_tmp = []
song_name = ""
endFullSong = ""
sharedInfo = []
with open(args.encrypted_song_path, 'rb') as file:
	result = []
	x = metadata()
	file.readinto(x)
	owner_id = x.owner_id
	# print(f"owner_id: {owner_id}")
	region_ids_tmp.append(x.region_ids)
	# print(f"region_ids: {x.region_ids}")
	region_secrets_tmp.append(x.region_secrets)
	# print(f"region_secrets: {x.region_secrets}")
	song_name = x.song_name
	# print(f"song_name: {song_name}")
	endFullSong = x.endFullSong
	# print(f"endFullSong: {endFullSong}")
	sharedInfo.append(x.sharedInfo)
	# print(f"SharedInfo: {x.sharedInfo}")

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
	print(f"owner_id: {owner_id}")
	print(f"region_ids: {region_ids}")
	print(f"region_secrets: {region_secrets}")
	print(f"song_name: {song_name}")
	print(f"endFullSong: {endFullSong}")
	print(f"sharedInfo: {sharedInfo}")
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
song_str = (pin_hash + pin + songName)
songkey = monocypher.blake2b(song_str).hex()

if(args.debug):
	print("\n\n-- Song Key Data -----------------------------------")
	print(f"pin: {pin}")
	print(f"pin_hash: {pin_hash}")
	print(f"song_str: {song_str}")
	print(f"songkey: {songkey}")
	print("-- End Song Key Data -------------------------------\n")



# Generate regionkey
randpasses = []
for r in region_ids:
	if r != 0:
		for p in regions:
			if regions[p]["id"] == r:
				randpasses.append(regions[p]["rand_pass"])

# Get rand_pass from region_secrets.json
if(args.debug):
	print("\n\n-- Region Key Data ---------------------------------")
	print(f"rand_passes: {randpasses}")
	print(f"region_ids: {region_ids}")
	print(f"region_secrets: {region_secrets}")
	print("-- End Region Key Data -----------------------------\n")

key = randpasses[0]
mac = str(region_secrets[0])[-32:]
message = str(region_secrets[0])[:-32]

key_hex = bytes.fromhex(key)
mac_hex = bytes.fromhex(mac)
message_hex = bytes.fromhex(message)

regionKey = monocypher.unlock(bytes(key, encoding="utf-8"), b'', mac_hex, message_hex)

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
secret = str(songkey)+str(regionKey.hex())+str(hardwareSecretHash)


call(["./decryptSong",
	args.encrypted_song_path,
	secret
])
