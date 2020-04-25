(window.webpackJsonp=window.webpackJsonp||[]).push([[19],{221:function(e,t,s){"use strict";s.r(t);var a=s(0),n=Object(a.a)({},(function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("ContentSlotsDistributor",{attrs:{"slot-key":e.$parent.slotKey}},[s("h1",{attrs:{id:"encryption"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#encryption"}},[e._v("#")]),e._v(" Encryption")]),e._v(" "),s("h2",{attrs:{id:"overview"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#overview"}},[e._v("#")]),e._v(" Overview")]),e._v(" "),s("p",[e._v("For symmetric encryption, we are using two different algorithms: XSalsa20-Poly1305 and XChaCha20-Poly1305. XSalsa20 is used in the “secret box” functions, functions pre-packed so they are easy to use and hard to mess-up, for the various string encryption cases. XSalsa20 has no known attacks against it and it is unlikely that our adversaries will develop their own. For the actual file encryption, we are using XChaCha20-Poly1305. ChaCha20 is a modification of Salsa20 that increases the diffusion per round and achieves the same or better performance. Furthermore, libsodium has well-documented examples on how to properly implement file or stream encryption with ChaCha20, thus to keep from messing up the crypto algorithms we are staying as close to their official design speck as possible. ChaCha20 like Salsa20 is secure to date from cryptanalysis at a key size larger than or equal to 128.")]),e._v(" "),s("p",[e._v("For asymmetric encryption, we are using Curve25519 high-speed elliptic curve cryptography. This, like Salsa20, has a well made public-private box system that is very hard to mess up that we are using to write our encryption functions. Only small strings will be encrypted with ECC. This particular curve is used in hundreds of libraries including OpenSSL, GnuTLS, and SSH. We were not able to locate any attacks that other teams may use against this algorithm if properly implemented.")]),e._v(" "),s("p",[e._v("For digital signatures, we are using the Ed25519 digital signature system. This function is also nicely packaged with libsodium so that we can sign and authenticate our songs. This is based on the EC 25519, so the same security applies.")]),e._v(" "),s("p",[e._v("For password hashing, we are using argon2id. This works by having multiple rounds of hashing to increase the time required to brute-force a pin. The chance of collision is incredibly low, so the security of the encrypted pins depends entirely on their lengths. No matter what we do, short pins will always be able to be brute-forced. We are using a libsodium library to implement this correctly.")]),e._v(" "),s("p",[e._v("For regular hashing, we are using Blake2b. Blake2b is a very fast and secure hashing function that we are using to ensure that encryption keys are generated on the fly. Blake2b is used by Argon2, the winner of the password hashing competition. We are using a libsodium library to ensure that this algorithm is correctly implemented.")]),e._v(" "),s("p",[e._v("Things being secured by crypto:")]),e._v(" "),s("ul",[s("li",[e._v("Login 8-64 digit pin (up to 64 users)")]),e._v(" "),s("li",[e._v("Sharing the Songs (If owner of song)")]),e._v(" "),s("li",[e._v("Region Locking (a MiPod can have up to 32 regions)")]),e._v(" "),s("li",[e._v("No song modification")]),e._v(" "),s("li",[e._v("No custom music")]),e._v(" "),s("li",[e._v("No listening to full songs you don't have perms to")]),e._v(" "),s("li",[e._v("No listening to song preview on non MiPod device")])]),e._v(" "),s("h2",{attrs:{id:"protect-song"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#protect-song"}},[e._v("#")]),e._v(" Protect Song")]),e._v(" "),s("p",[e._v("Since protect song is run during provisioning, we decided to write this in Python. We start by creating a "),s("code",[e._v("songKey")]),e._v(", which is the hashed combination of the users pin hash, pin, and the songName. This will be used later.")]),e._v(" "),s("div",{staticClass:"language-python extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v('songKey = monocypher.blake2b(bytes(users["users"][args.owner]["pin_hash"], encoding="utf-8") + \\\n                                bytes(users["users"][args.owner]["pin"], encoding="utf-8") + songName)\n')])])]),s("p",[e._v("Next, we use the random password for each region as the key for monocypher's locking function.")]),e._v(" "),s("div",{staticClass:"language-python extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v('for r in args.region_list:\n    rand_pass = regions[r]["rand_pass"]\n    encrypted = monocypher.lock(bytes.fromhex(rand_pass), nonce, regionKey)\n')])])]),s("p",[e._v("We can then store this encrypted text in the regionSecrets in the song metadata to be used for decryption.")]),e._v(" "),s("p",[e._v('Next, we create a hardware secret hash for both the full song, and the 30 second sample. This hardware secret is the hashed combination of the owners hardware secrets, and the song name. The 30 second hash has an additional "30" appended for differentiation.')]),e._v(" "),s("div",{staticClass:"language-python extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v('hardwareSecretHash = monocypher.blake2b(bytes(users["users"][args.owner]["hw_secret"],\n                     encoding="utf-8") + songName).hex()\nhardwareSecretHash30 = monocypher.blake2b(bytes(users["users"][args.owner]["hw_secret"],\n                     encoding="utf-8") + songName + bytes("30",\n                     encoding="utf-8")).hex()\n')])])]),s("p",[e._v("All of this information is then passed to the "),s("code",[e._v("encryptSong")]),e._v(" c file as follows:")]),e._v(" "),s("div",{staticClass:"language-python extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v('call(["./encryptSong",\n    str(users["users"][args.owner]["id"]),\n    ",".join([str(x) for x in region_ids_tmp]),\n    ",".join([str(x) for x in regionSecretList]),\n    args.infile.split("/")[-1],\n    smallFile,\n    str(hardwareSecretHash30),\n    args.infile,\n    str(songKey.hex())+str(regionKey.hex())+str(hardwareSecretHash),\n    args.outfile,\n    str(users["root_sign"]),\n    str(users["root_verify"])\n])\n')])])]),s("h3",{attrs:{id:"encrypt-song"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#encrypt-song"}},[e._v("#")]),e._v(" Encrypt Song")]),e._v(" "),s("p",[e._v("Since "),s("code",[e._v("encryptSong")]),e._v(" is called internally, there are a number of arguments needed for the program to run:")]),e._v(" "),s("ul",[s("li",[s("code",[e._v("argv[1]")]),e._v(": owner_id")]),e._v(" "),s("li",[s("code",[e._v("argv[2]")]),e._v(": region_ids")]),e._v(" "),s("li",[s("code",[e._v("argv[3]")]),e._v(": region_secrets")]),e._v(" "),s("li",[s("code",[e._v("argv[4]")]),e._v(": song_name")]),e._v(" "),s("li",[s("code",[e._v("argv[5]")]),e._v(": 30path")]),e._v(" "),s("li",[s("code",[e._v("argv[6]")]),e._v(": 30secret")]),e._v(" "),s("li",[s("code",[e._v("argv[7]")]),e._v(": fullpath")]),e._v(" "),s("li",[s("code",[e._v("argv[8]")]),e._v(": secret")]),e._v(" "),s("li",[s("code",[e._v("argv[9]")]),e._v(": outFile")]),e._v(" "),s("li",[s("code",[e._v("argv[10]")]),e._v(": root_sign")]),e._v(" "),s("li",[s("code",[e._v("argv[11]")]),e._v(": pub_key")])]),e._v(" "),s("p",[e._v("The first thing this function does is takes the data it was given and populated the metadata structure. Owner ID, Region IDs, Region Secrets, and song name are all initialized and written to the metadata structure here.")]),e._v(" "),s("p",[e._v("Next, we create a hash of the secret with BLAKE2b as follows:")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("crypto_blake2b(hash, secret, 160);\n")])])]),s("p",[e._v("This hash is then passed to monocyphers lock function:")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("encrypt(encFile, argv[7], hash, nonce) != 0)\n")])])]),s("p",[e._v("The same process is then done with the 30 second secret.")]),e._v(" "),s("p",[e._v("Finally, we make a signature of the song to ensure there is no tampering done in the future. This is done using monocyphers "),s("a",{attrs:{href:"https://monocypher.org/manual/sign",target:"_blank",rel:"noopener noreferrer"}},[e._v("crypto_sign"),s("OutboundLink")],1),e._v(" function. "),s("code",[e._v("crypto_sign()")]),e._v(" provides EdDSA public key signatures and verification.")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("crypto_sign(signature, root_verify, public_key, toSign, sizeof toSign);\n")])])]),s("h2",{attrs:{id:"generating-secrets"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#generating-secrets"}},[e._v("#")]),e._v(" Generating Secrets")]),e._v(" "),s("h3",{attrs:{id:"generating-full-secret"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#generating-full-secret"}},[e._v("#")]),e._v(" Generating Full Secret")]),e._v(" "),s("p",[e._v("The "),s("code",[e._v("generateSecret")]),e._v(" function takes 2 arguments:")]),e._v(" "),s("ul",[s("li",[s("code",[e._v("struct metadata *meta")]),e._v(" - A pointer to the song "),s("router-link",{attrs:{to:"/technical-reference/metadata.html"}},[e._v("metadata structure")]),e._v(".")],1),e._v(" "),s("li",[s("code",[e._v("char *pin")]),e._v(" - The current users pin.")])]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("uint8_t * generateSecret(char *pin, struct metadata *meta) {}\n")])])]),s("p",[e._v("The first step in generating the secret is to generate the regionKey used during provisioning. We can get the information needed for this by taking the first 64 bytes of "),s("code",[e._v("region_secrets")]),e._v(" in the metadata, which is the message, then getting the next 32 bytes, which is the MAC.")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("// ------------ Generate regionKey ------------\nuint8_t mac[32+1] = {0};\nuint8_t msg[64+1] = {0};\n\n// First 64 of region_secret is the encrypted msg. Second 32 is the mac.\nfor(int i = 0; i < 96; i++) {\n    if(i < 64) {\n        msg[i] = meta->region_secrets[0][i];\n    } else {\n        mac[(i-64)] = meta->region_secrets[0][i];\n    }\n}\n")])])]),s("p",[e._v("After doing some hex conversions, we can pass this information to monocypher's "),s("code",[e._v("crypto_unlock")]),e._v(" function to unlock the "),s("code",[e._v("regionKey")]),e._v(".")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("crypto_unlock(regionKey, bytesPass, nonce, bytesMac, bytesMsg, sizeof(bytesMsg));\n")])])]),s("p",[e._v("Now that we have the "),s("code",[e._v("regionKey")]),e._v(" generated, we need to generate the hardwareSecretHash. This can be done by combining the "),s("code",[e._v("hw_secret")]),e._v(" and song name from the metadata, then hasing it with monocyphers BLAKE2b:")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("// ------------ Generate hardwareSecretHash ------------\nuint8_t *hshu = malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name));\nmemcpy(hshu, user_data[i].hw_secret, strlen(user_data[i].hw_secret));\nmemcpy(hshu + strlen(user_data[i].hw_secret), meta->song_name, strlen(meta->song_name));\n\nuint8_t hardwareSecretHash[64] = {0};\ncrypto_blake2b(hardwareSecretHash, hshu, strlen((char *)hshu));\n")])])]),s("p",[e._v("Next, we need to generate the "),s("code",[e._v("songKey")]),e._v(". This is a combination of the "),s("code",[e._v("pin_hash")]),e._v(" from the "),s("code",[e._v("device_secrets")]),e._v(", the users pin, and the name of the song. Hash this with BLAKE2b, and you have the "),s("code",[e._v("songKey")]),e._v(":")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("uint8_t *song_str = malloc(strlen(user_data[i].pin_hash) + strlen(pin) + strlen(meta->song_name));\nmemcpy(song_str, user_data[i].pin_hash, strlen(user_data[i].pin_hash));\nmemcpy(song_str + strlen(user_data[i].pin_hash), pin, strlen(pin));\nmemcpy(song_str + strlen(user_data[i].pin_hash) + strlen(pin), meta->song_name, strlen(meta->song_name));\n\nuint8_t songKey[64] = {0};\ncrypto_blake2b(songKey, song_str, strlen((char *)song_str));\n")])])]),s("p",[e._v("Finally, we can combine the regionKey, songKey, and hardwareSecretHash that we generated to get the full secret:")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("// ------------ Generate Secret ------------\nuint8_t secret[sizeof(songKey) + sizeof(regionKey) + sizeof(hardwareSecretHash)] = {0};\n\nmemcpy(secret, songKey, sizeof(songKey));\nmemcpy(secret+sizeof(songKey), regionKey, sizeof(regionKey));\nmemcpy(secret+sizeof(songKey)+sizeof(regionKey), hardwareSecretHash, sizeof(hardwareSecretHash));\n")])])]),s("h3",{attrs:{id:"generating-30-second-secret"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#generating-30-second-secret"}},[e._v("#")]),e._v(" Generating 30 Second Secret")]),e._v(" "),s("p",[e._v("The "),s("code",[e._v("generate30Secret")]),e._v(" function only takes 1 argument, as no pin is needed for a sample:")]),e._v(" "),s("ul",[s("li",[s("code",[e._v("struct metadata *meta")]),e._v(" - A pointer to the song "),s("router-link",{attrs:{to:"/technical-reference/metadata.html"}},[e._v("metadata structure")]),e._v(".")],1)]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("uint8_t * generate30Secret(struct metadata *meta) {}\n")])])]),s("p",[e._v("The 30 second secret is a combination of the hardwareSecretHash30 stored in the "),s("code",[e._v("device_secrets")]),e._v(', the hardware secret, the song name, and "30", just like in the provisioning process.')]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v('// ------------ Generate hardwareSecretHash30 ------------\nuint8_t *hsh30 = malloc(strlen(user_data[i].hw_secret) + strlen(meta->song_name) + 2); // +2 for the 30\nmemcpy(hsh30, user_data[i].hw_secret, strlen(user_data[i].hw_secret));\nmemcpy(hsh30 + strlen(user_data[i].hw_secret), meta->song_name, strlen(meta->song_name));\nmemcpy(hsh30 + strlen(user_data[i].hw_secret) + strlen(meta->song_name), "30", 2);\n')])])]),s("p",[e._v("Finally, we hash that string with monocyphers BLAKE2b function, and return it to the parent function:")]),e._v(" "),s("div",{staticClass:"language-c extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[e._v("crypto_blake2b(hardwareSecretHash30, hsh30, strlen((char *)hsh30));\n")])])])])}),[],!1,null,null,null);t.default=n.exports}}]);