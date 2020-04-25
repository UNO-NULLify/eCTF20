# Encryption

## Overview

For symmetric encryption, we are using two different algorithms: XSalsa20-Poly1305 and XChaCha20-Poly1305. XSalsa20 is used in the “secret box” functions, functions pre-packed so they are easy to use and hard to mess-up, for the various string encryption cases. XSalsa20 has no known attacks against it and it is unlikely that our adversaries will develop their own. For the actual file encryption, we are using XChaCha20-Poly1305. ChaCha20 is a modification of Salsa20 that increases the diffusion per round and achieves the same or better performance. Furthermore, libsodium has well-documented examples on how to properly implement file or stream encryption with ChaCha20, thus to keep from messing up the crypto algorithms we are staying as close to their official design speck as possible. ChaCha20 like Salsa20 is secure to date from cryptanalysis at a key size larger than or equal to 128.

For asymmetric encryption, we are using Curve25519 high-speed elliptic curve cryptography. This, like Salsa20, has a well made public-private box system that is very hard to mess up that we are using to write our encryption functions. Only small strings will be encrypted with ECC. This particular curve is used in hundreds of libraries including OpenSSL, GnuTLS, and SSH. We were not able to locate any attacks that other teams may use against this algorithm if properly implemented.

For digital signatures, we are using the Ed25519 digital signature system. This function is also nicely packaged with libsodium so that we can sign and authenticate our songs. This is based on the EC 25519, so the same security applies.

For password hashing, we are using argon2id. This works by having multiple rounds of hashing to increase the time required to brute-force a pin. The chance of collision is incredibly low, so the security of the encrypted pins depends entirely on their lengths. No matter what we do, short pins will always be able to be brute-forced. We are using a libsodium library to implement this correctly.

For regular hashing, we are using Blake2b. Blake2b is a very fast and secure hashing function that we are using to ensure that encryption keys are generated on the fly. Blake2b is used by Argon2, the winner of the password hashing competition. We are using a libsodium library to ensure that this algorithm is correctly implemented.

Things being secured by crypto:

- Login 8-64 digit pin (up to 64 users)
- Sharing the Songs (If owner of song)
- Region Locking (a MiPod can have up to 32 regions)
- No song modification
- No custom music
- No listening to full songs you don't have perms to
- No listening to song preview on non MiPod device

## Protect Song
Since protect song is run during provisioning, we decided to write this in Python. We start by creating a ```songKey```, which is the hashed combination of the users pin hash, pin, and the songName. This will be used later.

```python
songKey = monocypher.blake2b(bytes(users["users"][args.owner]["pin_hash"], encoding="utf-8") + \
                                bytes(users["users"][args.owner]["pin"], encoding="utf-8") + songName)
```

Next, we use the random password for each region as the key for monocypher's locking function.

```python
for r in args.region_list:
    rand_pass = regions[r]["rand_pass"]
    encrypted = monocypher.lock(bytes.fromhex(rand_pass), nonce, regionKey)
```

We can then store this encrypted text in the regionSecrets in the song metadata to be used for decryption.

Next, we create a hardware secret hash for both the full song, and the 30 second sample. This hardware secret is the hashed combination of the owners hardware secrets, and the song name. The 30 second hash has an additional "30" appended for differentiation.

```python
hardwareSecretHash = monocypher.blake2b(bytes(users["users"][args.owner]["hw_secret"],
                     encoding="utf-8") + songName).hex()
hardwareSecretHash30 = monocypher.blake2b(bytes(users["users"][args.owner]["hw_secret"],
                     encoding="utf-8") + songName + bytes("30",
                     encoding="utf-8")).hex()
```

All of this information is then passed to the ```encryptSong``` c file as follows:

```python
call(["./encryptSong",
    str(users["users"][args.owner]["id"]),
    ",".join([str(x) for x in region_ids_tmp]),
    ",".join([str(x) for x in regionSecretList]),
    args.infile.split("/")[-1],
    smallFile,
    str(hardwareSecretHash30),
    args.infile,
    str(songKey.hex())+str(regionKey.hex())+str(hardwareSecretHash),
    args.outfile,
    str(users["root_sign"]),
    str(users["root_verify"])
])
```




### Encrypt Song

Since ```encryptSong``` is called internally, there are a number of arguments needed for the program to run:

- ```argv[1]```: owner_id 
- ```argv[2]```: region_ids 
- ```argv[3]```: region_secrets 
- ```argv[4]```: song_name 
- ```argv[5]```: 30path
- ```argv[6]```: 30secret
- ```argv[7]```: fullpath
- ```argv[8]```: secret
- ```argv[9]```: outFile
- ```argv[10]```: root_sign
- ```argv[11]```: pub_key

The first thing this function does is takes the data it was given and populated the metadata structure. Owner ID, Region IDs, Region Secrets, and song name are all initialized and written to the metadata structure here. 

Next, we create a hash of the secret with BLAKE2b as follows:

```c
crypto_blake2b(hash, secret, 160);
```

This hash is then passed to monocyphers lock function:

```c
encrypt(encFile, argv[7], hash, nonce) != 0)
```

The same process is then done with the 30 second secret.

Finally, we make a signature of the song to ensure there is no tampering done in the future. This is done using monocyphers [crypto_sign](https://monocypher.org/manual/sign) function. ```crypto_sign()``` provides EdDSA public key signatures and verification.

```c
crypto_sign(signature, root_verify, public_key, toSign, sizeof toSign);
```

## Generating Secrets

### Generating Full Secret

The ```generateSecret``` function takes 2 arguments:

- ```struct metadata *meta``` - A pointer to the song [metadata structure](./metadata.md).
- ```char *pin``` - The current users pin.

```c
uint8_t * generateSecret(char *pin, struct metadata *meta) {}
```

The first step in generating the secret is to generate the regionKey used during provisioning. We can get the information needed for this by taking the first 64 bytes of ```region_secrets``` in the metadata, which is the message, then getting the next 32 bytes, which is the MAC. 

```c
// ------------ Generate regionKey ------------
uint8_t mac[32+1] = {0};
uint8_t msg[64+1] = {0};

// First 64 of region_secret is the encrypted msg. Second 32 is the mac.
for(int i = 0; i < 96; i++) {
    if(i < 64) {
        msg[i] = meta->region_secrets[0][i];
    } else {
        mac[(i-64)] = meta->region_secrets[0][i];
    }
}
```

After doing some hex conversions, we can pass this information to monocypher's ```crypto_unlock``` function to unlock the ```regionKey```.

```c
crypto_unlock(regionKey, bytesPass, nonce, bytesMac, bytesMsg, sizeof(bytesMsg));
```

Now that we have the ```regionKey``` generated, we need to generate the hardwareSecretHash. This can be done by combining the ```hw_secret``` and song name from the metadata, then hasing it with monocyphers BLAKE2b:

```c
// ------------ Generate hardwareSecretHash ------------
uint8_t *hshu = malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name));
memcpy(hshu, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
memcpy(hshu + strlen(user_data[i].hw_secret), meta->song_name, strlen(meta->song_name));

uint8_t hardwareSecretHash[64] = {0};
crypto_blake2b(hardwareSecretHash, hshu, strlen((char *)hshu));
```

Next, we need to generate the ```songKey```. This is a combination of the ```pin_hash``` from the ```device_secrets```, the users pin, and the name of the song. Hash this with BLAKE2b, and you have the ```songKey```:

```c
uint8_t *song_str = malloc(strlen(user_data[i].pin_hash) + strlen(pin) + strlen(meta->song_name));
memcpy(song_str, user_data[i].pin_hash, strlen(user_data[i].pin_hash));
memcpy(song_str + strlen(user_data[i].pin_hash), pin, strlen(pin));
memcpy(song_str + strlen(user_data[i].pin_hash) + strlen(pin), meta->song_name, strlen(meta->song_name));

uint8_t songKey[64] = {0};
crypto_blake2b(songKey, song_str, strlen((char *)song_str));
```

Finally, we can combine the regionKey, songKey, and hardwareSecretHash that we generated to get the full secret:

```c
// ------------ Generate Secret ------------
uint8_t secret[sizeof(songKey) + sizeof(regionKey) + sizeof(hardwareSecretHash)] = {0};

memcpy(secret, songKey, sizeof(songKey));
memcpy(secret+sizeof(songKey), regionKey, sizeof(regionKey));
memcpy(secret+sizeof(songKey)+sizeof(regionKey), hardwareSecretHash, sizeof(hardwareSecretHash));
```

### Generating 30 Second Secret

The ```generate30Secret``` function only takes 1 argument, as no pin is needed for a sample:

- ```struct metadata *meta``` - A pointer to the song [metadata structure](./metadata.md).

```c
uint8_t * generate30Secret(struct metadata *meta) {}
```

The 30 second secret is a combination of the hardwareSecretHash30 stored in the ```device_secrets```, the hardware secret, the song name, and "30", just like in the provisioning process. 

```c
// ------------ Generate hardwareSecretHash30 ------------
uint8_t *hsh30 = malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name) + 2); // +2 for the 30
memcpy(hsh30, user_data[i].hw_secret, strlen(user_data[i].hw_secret));
memcpy(hsh30 + strlen(user_data[i].hw_secret), meta->song_name, strlen(meta->song_name));
memcpy(hsh30 + strlen(user_data[i].hw_secret) + strlen(meta->song_name), "30", 2);
```

Finally, we hash that string with monocyphers BLAKE2b function, and return it to the parent function:

```c
crypto_blake2b(hardwareSecretHash30, hsh30, strlen((char *)hsh30));
```