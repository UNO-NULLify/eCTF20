# Encryption

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


WE need to talk abt protectsong, encrypt song, encrypt 30, generate secret and generate 309 secret here too