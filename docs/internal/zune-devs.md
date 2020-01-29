# The Zune Devs

## Initial Plan

The Zune Devs (Frank, Jeff, Drew, and Aaron 3) have been hard at work creating secure encryption methods to ensure the validity of passed data.
In practice, the encryption that we use and write will be performed using the libsodium library. 

For symmetric encryption, we are using two different algorithms: XSalsa20-Poly1305 and XChaCha20-Poly1305. XSalsa20 is used in the “secret box” functions, functions pre-packed so they are easy to use and hard to mess-up, for the various string encryption cases. XSalsa20 has no known attacks against it and it is unlikely that our adversaries will develop their own. For the actual file encryption, we are using XChaCha20-Poly1305. ChaCha20 is a modification of Salsa20 that increases the diffusion per round and achieves the same or better performance. Furthermore, libsodium has well-documented examples on how to properly implement file or stream encryption with ChaCha20, thus to keep from messing up the crypto algorithms we are staying as close to their official design speck as possible. ChaCha20 like Salsa20 is secure to date from cryptanalysis at a key size larger than or equal to 128. 
 
For asymmetric encryption, we are using Curve25519 high-speed elliptic curve cryptography. This, like Salsa20, has a well made public-private box system that is very hard to mess up that we are using to write our encryption functions. Only small strings will be encrypted with ECC.  This particular curve is used in hundreds of libraries including OpenSSL, GnuTLS, and SSH. We were not able to locate any attacks that other teams may use against this algorithm if properly implemented. 

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


### Song Protection Process:

<mermaid>
graph LR
  classDef py fill:#4CAF50;
  classDef secret fill:#F44336;
  classDef wav fill:#2196F3;
  CreateRegions.py:::py --> region_secrets:::secret --> ProtectSong.py:::py
  CreateUsers.py:::py --> user_secrets:::secret --> ProtectSong.py:::py
  audio.wav:::wav --> ProtectSong.py:::py
  ProtectSong.py:::py --> audio.drm
</mermaid>

<mermaid>
graph LR
  subgraph ProtectSong.py
  sk["SongKey<br>hash(hashpin + pin + SongName)"]
  rk["RegionKey<br>getRandom()"]
  rs["RegionSecret<br>asymEnc(RegionKey, RegionPubKey)"]
  hsh["HardwareSecretHash<br>hash(hardwareSecret+SongName)"]
  hsh30["HardwareSecretHash30<br>hash(hardwareSecret+SongName+'str')"]
  esf["EncryptedSongFull<br>enc(Songkey+RegionKey+HardwareSecretHash, song)"]
  es30["EncryptedSong30<br>enc(Song30, HardwareSecretHash30 + hash(EncryptedSongFull))"]
  ds["DigitalSignature<br>"]
  sk --> esf
  rk --> esf
  hsh --> esf
  esf --> ds
  rk --> rs
  rs --> ds
  hsh30 --> es30
  esf --> es30
  es30 --> ds
  end
</mermaid>

As a result of this process, <code>ProtectSong.py</code> should have an output in the following format:
```
[ 
	Song Name, 
	Owner of Song, 
	Song Region List, 
	List of Region Secrets (One for each region), 
	Encrypted Song 30 Second Chunk, 
	Encrypted Full Song, Digital Signature 
]
```

### Device Provisioning Process:

<mermaid>
graph LR
  classDef py fill:#4CAF50;
  classDef secret fill:#F44336;
  classDef wav fill:#2196F3;
  classDef elf fill:#9C27B0;
  region_secrets:::secret --> CreateDevice.py:::py
  user_secrets:::secret --> CreateDevice.py
  CreateDevice.py:::py --> device_secrets:::secret
  device_secrets --> BuildDevice.py:::py
  BuildDevice.py --> miPod:::elf
</mermaid>

#### Secret File Formatting:

<mermaid>
classDiagram
class user_secrets {
    User
    Pin
    HashedPin
    Public Key
    Private Key Encrypted
    HardwareSecret
    RootPublicKey
    RootPrivateKey
}
class region_secrets {
    Region List
    Public Key
    RandomPassword
    Private Key Encrypted
}
</mermaid>

### Implications

This competition simulates the typical challenges and issues that security engineering teams face in the real world. We are presented with four opportunities, in particular, that contribute to our growth as Cybersecurity professionals directly. 

First, implementing a strong cryptographic solution that both ensures the provisioned media's confidentiality and integrity and does not effect said media's availability to authorized users. This challenge imposes strict availability expectations and we have relatively weak hardware to pull off an effective cryptography scheme given these constraints. In short we will probably face the harsh reality of choosing between user experience or enhanced security. 

Second, this team is also responsible for implementing the software for the digital rights management module. The provided reference project contained numerous instances of well documented, insecure functions of which we must find a better alternative. Further, we are charged with implementing additional functionality like skipping 5 seconds within a song and playing a song with an enhanced sample rate. Both of these tasks, and our cryptographic duties, are largely dependant on the constraints of the provided hardware; requiring the outside expertise of hardware engineers. 

Third, growth manifests as collaboration with other teams to deliver a product, and later break other's products, within hard deadlines. We are working in parallel with team Multiple Priority Disorder to ensure our implementation is secure. We are also working in conjunction with team Bird Watching to form effective, secure solutions. Namely, they will help us store certain cryptographic keys securely at the hardware level. Bird Watching also identified areas in memory that the base--untrusted--system cannot access, but it is limited in size.  We will, therefore, collaborate on how to leverage this secure space effectively.

Our fourth and final opportunity for growth is arguably everyone's favorite: practicing our pentesting techniques. Once our deliverable is submitted we move into the attack phase. This is where we can leverage both all the contributors' knowledge of this project and their accrued research concerning known threats to the system.

We submit, therefore, that this project meets or exceeds the learning objectives set forth by the UNO Cybersecurity program due to the realism, technical challenges, necessary collaboration, and the time constraints this project presents.

### Support Material

Our team's main task is tackling the core development of the project, which to do we've had to refer to the official MITRE eCTF 2020 rules multiple times to ensure we meet all the program requirements. To implement the cryptography in the system we used a couple different [online](https://gist.github.com/atoponce/07d8d4c833873be2f68c34f9afc5a78a) [sources](https://monocypher.org/manual/) that aided in choosing best implementation practices and the direct [libsodium](https://download.libsodium.org/doc/) and [pynacl](https://pynacl.readthedocs.io/en/stable/secret/) libraries' documentations  we used for to correctly port each function into our programs. Additionally we consulted books such as the [Secure Programming Cookbook](http://shop.oreilly.com/product/9780596003944.do) and [Programming Linux Anti-Reversing Techniques](https://leanpub.com/anti-reverse-engineering-linux) to ensure our design is as secure from adversaries as we could make it.

### Project Timeline

<mermaid>
gantt
    title Zune Dev's Project Timeline
    dateFormat  DD-MM-YYYY
    section Competition <br>Phases
    Secure Design    :a1, 01-15-2020, 42d
    Attack           :after a1  , 20d
    section Frank
    Task in sec      :2014-01-12  , 13d
    another task      : 24d
	section Jeff
    Task in sec      :2014-01-12  , 13d
    another task      : 24d
	section Drew
    Task in sec      :2014-01-12  , 13d
    another task      : 24d
	section Aaron
    Task in sec      :2014-01-12  , 13d
    another task      : 24d
</mermaid>

### Assessment Plan

A wholistic assessment plan for this team should take the following into consideration:

**Timeliness:** How well did we follow MITRE's timeline? How well did we follow our own timeline and, in the event of falling behind, was there a legitimate roadblock and how did we address it?

**State of the Art:** Are we using third party libraries with known vulnerabilities? Are we using libraries that make our implementation easier to secure? Are we using proven cryptographic algorithms?

**Theoretical Knowledge** Are we aware of the literature surrounding this project? Do we understand the implications of the decisions we make? Are our ideas on how to implement cryptography sound? Are we aware of the attack surface of our system? 

**Innovation:** This project gives us an opportunity to work out real world problems: how elegant are our solutions?

**Implementation:** Have we taken the above and build something that works as we designed it? How secure was our c programming really? Did we make any logical errors or bad assumptions in our implementation?

**Contribution and Collaboration:** Everyone has a role to play some people act as architects others are better technicians did everyone try reaching beyond their comfort zone to learn? Did anyone's actions create a roadblock? Is there good communication both within the team and between teams? 
