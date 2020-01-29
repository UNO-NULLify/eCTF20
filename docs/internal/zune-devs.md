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


### Song Protection Process

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

#### ProtectSong.py

This script is used to securely package songs to be used with the DRM system. <code>ProtectSong.py</code> takes in 5 parameters:

- <code>&lt;REGION_LIST&gt;</code>: List of country names to region-lock a song to.  These names are simply separated by a space.  Valid names include: USA,Canada, Mexico, Australia, and Japan.
- <code>&lt;PATH_TO_REGION_SECRETS&gt;</code>: The absolute or relative path to region secrets file.
- <code>&lt;PATH_TO_SONG&gt;</code>: The absolute or relative path to the input song to protect. Input song must conform to our audio requirements (see section 11.1).
- <code>&lt;PATH_TO_OUTPUT_SONG&gt;</code>: the absolute or relative path to save the output song to.
- <code>&lt;USER&gt;</code>: The username that the song is owned by.

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
    ds["DigitalSignature"]
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

#### CreateRegions.py

This script is used to provision the secret components for an ecosystem of devicesbelonging to various regions. It will only be run once to globally provision all regions. <code>CreateRegions.py</code> takes in 1 parameter, <code>&lt;REGION_LIST&gt;</code>.

<mermaid>
graph LR
  subgraph CreateRegions.py
    rl["RegionList<br>(param)"]
    pubk["PublicKey<br>genkeypub()"]
    rp["RandomPassword<br>genPass()"]
    pkee["PrivateKeyEnc<br>enc(RandomPassword, genkeypriv())"]
    rp --> pkee
  end
</mermaid>

As a result of this process, <code>CreateRegions.py</code> should output to <code>region_secret</code> in the following format:

```json
{
    "USA": {
        "priv_key": "0fdebdd176c2ede34b313e78585f02149fe95896c5cbf2192a985711cfa8c6d3",
        "priv_key_enc": "2ed666de71c9d85980bd156baaa89c05fb365b786a23d20cb6d47626b506cb6956b3b2e7b7d848fc7436c2fe63e4d7e61f96948a1a66b6334e8b791ca153ba54e6ab083e3a878efe",
        "pub_key": "e98eb1b3c5aef1ac6351aae70de2893baef7fe104a8e25b8c284d85fa559f418",
        "rand_pass": "e371034f8d44e7987b266ed151fe439919dacd055070d9dacd42995d2e7fdfb6"
    },
    "Canada": {
        "priv_key": "cb5778e708da1563542485561d055e451646b86a4c1452058a6eb59b772f6e31",
        "priv_key_enc": "4e8ec2b94bdab2e3679306a37b784ae69c815396c912ea31ce9debb4424959ea4b2268610fa77a8cb4b84ed4f0d4810b53306f9a9e126d61f2fcfbad1a56b92abd749a80937de236",
        "pub_key": "dcdaf61a8176c23693a15c7752bc18f9a7aefebce94ac2d7e2cca5f0f2d14e45",
        "rand_pass": "4345f7ee16cc1ba2e446e7ccd53674a766050d682f0032e1a562a1c2dd01158b"
    },
    "Japan": {
        "priv_key": "983dad791c7336cfc5fda03ad2aaf1b89e85a2e75106f120215bcc8fa48656e4",
        "priv_key_enc": "e83c716355706459780c3af750f9bb75deadd685af636d82d8d295559968065ceaa90531c9cf6c70b31f127acd5548a19853c02ecd74122fcda0fcaa554bf3a5d648858f70a7fc3d",
        "pub_key": "dd67caa24b21ca16478f6b6ef091488444517a1a6951a67a2778e732ab1fda3f",
        "rand_pass": "3a7bc04abb18994735b00e3297461c163c8ae4cfbc3a8e55544632ade3b2ab1c"
    }
}
```

#### CreateUsers.py

This script is used to provision all possible users that could exist on any device. It will only be run once to globally provision all provided users. <code>CreateUsers.py</code> takes in 1 parameter, <code>&lt;USER_PIN_LIST&gt;</code>.

<mermaid>
graph LR
  subgraph CreateUsers.py
    u["User<br>(param)"]
    p["Pin<br>(param)"]
    hp["HashedPin<br>hash(pin, salt)"]
    s["Salt<br>genrand()"]
    pk["PublicKey<br>genpublickey() "]
    pke["PrivateKeyEnc<br> enc(hash(hashpin + pin + salt), genkeypriv())"]
    hs["HardwareSecret<br>genrand()"]
    rpuk["RootPublicKey<br>genpublickey()"]
    rprk["RootPrivateKey<br>genPrivateKey()"]
    p --> hp
    s --> hp
    hp --> pke
    p --> pke
    s --> pke
  end
</mermaid>

As a result of this process, <code>CreateUsers.py</code> should output to <code>user_secret</code> in the following format:

```json
{
    "root_sign": "62666533646637656638613964366636393137623830633431626133333232356639383737336531646437613966383632333135636137373338303036363662",
    "root_verify": "39623261303135613732363364653734373461306665383564376261643233323639313233383961366534326465393739316338626236313131323632333335",
    "user1": {
        "hw_secret": "2a7d327c4ad281fd8138",
        "pin": "12345678",
        "pin_hash": "$argon2id$v=19$m=65536,t=2,p=1$qISdgb2zwUiLtZ3fIvoAag$wtwchwBuFxT+5NJcP3VWcq60YE+OBtb9jIePN77MzYM",
        "pub_key": "64d55d9bb2e283beee7446259ef09c9bcae83af369d3e9711be39e552b1bc327",
        "pvt_key": "2700071d4ef6dbe9d84009075c9f5ed303a37ee8edd9fe5510cd6f913693fe5d",
        "pvt_key_enc": "0001b7db7146b0a915fe4b8031a5e0d3bd4d8c56a8623b2b55fc002065fdb8f0cef962860df29712b0097e0912fc89e8fd1ea4267018fbcde8eeb4f86b9cbd0e31540b829f4d9ded",
        "salt": "8784d12ea746fd66bc1c1ce93c67ae9b"
    },
    "user2": {
        "hw_secret": "82b5c89cb624a3abe579",
        "pin": "12345679",
        "pin_hash": "$argon2id$v=19$m=65536,t=2,p=1$cwk9MCG8yFwqLSTrJJpZ+w$usA7ge5ZJMthNx3JZ535yfxwX6JoEUXWfJyqlCDertQ",
        "pub_key": "91e9afdf79625e4725b3cfdc87c2feeaf529482ecaf5c1732c455d18edba4562",
        "pvt_key": "a72447414263a508440338dd20d39e54c73f67aef0f599e6cfc35b9f54d454f7",
        "pvt_key_enc": "24986577337a090004d3597faf1399e4b62a8ed911acbc575c4fe2d2ca1e27e017c70b73c67e5029739ee260adcbf29185d0de544abf17ccc806eafd73f1ce260b07a65e0e6b5cc5",
        "salt": "f4c30d5ce9553a61ed2b8196d6b3a791"
    },
}
```

### Device Provisioning Process

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

<!-- #### Secret File Formatting

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
</mermaid> -->

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
