# Initial Plans

## Multiple Priority Disorder

Our team consists of three students in the class and one volunteer. Of those three students, two are pursuing their Master’s degree in Cybersecurity (Aaron and Greg), one is pursuing a Bachelor’s and Master’s degree in Cybersecurity (Marvin), and one is pursuing a Bachelor’s degree in Computer Science with a minor in Cybersecurity (Jacob). Our group is split into a software security team (Aaron and Jacob) and a team preparing for the attack phase (Greg and Marvin). The software security team’s goal was to secure the front-end programs <code>eCTF20/miPod/src/main.c</code> and <code>eCTF20/miPod/src/miPod.h</code>, however we soon realized after beginning work on these files, that they could be recompiled and all of our work would be for nothing. Additionally, since the attackers had root privileges, they could essentially still perform any of the attacks that we were beginning to mitigate vulnerabilities for (environment and path manipulation). From here on out the software security team is focusing on reviewing the reference design for potential attack vectors, looking for design weaknesses in our design, assisting in the remediation of any such weaknesses, programming specific security focused functions (IPC between the front-end and back-end and creating an authorization function), making it more difficult to reverse engineer the final design, and communicating our findings with the attack group and the other software engineering team. The attack group’s focus remains finding exploitable vulnerabilities and creating an automated means of exploiting them.

### Process

Our team has 3 primary objectives, assess the reference design for vulnerabilities and execution flow that can be utilized in the attack phase, assess and ensure the quality of code that enters our repository to ensure the attack surface is as minimal as possible, our final objective is to increase the time investment of opposing teams in the attack phase by researching and implementing anti-reverse engineering methods such as detaching ptrace, or replacing function calls with pointers. The process for achieving these objectives will largely be focused on research and experimentation. This will begin by reviewing the code both in an automated manner as well as manually. It will also be valuable to research common attacks to our specific set of hardware in order to understand what changes may be futile due to hardware vulnerabilities to optimize time and effort. The majority of the research we intend to perform will utilize the resource materials indicated below. These will allow us to be efficient with our time by eliminating any blind experimentation. Additionally, there will be work to implement the use of the hardware register for inter-process communication (IPC), implement an authorization security function for playing/sharing music, and review the design for weaknesses or vulnerabilities.

### Implications

Our new or enhanced knowledge in software security engineering, software assurance, and embedded system security will further our education by providing high-pressure hands-on experience. Specifically, it allows us to apply these skills in a competitive environment, where we build our own system, assess others, exploit them, and have the opportunity to learn the potential downfalls of our design. That's what many of us will take from this, the experience of designing and securing a system, then learning how the things that we implemented added to the security of the system and how the design may have been exploited. All of these things go far beyond what a normal lab, class, or project could provide.

### Support Material

Our support material consists of many software vulnerability discovery books, a Youtube channel about various kinds of exploitation, and a commonly used website for programming errors or questions. They are as follows:

* 25 Deadly Sins of Software Security by Howard, LeBlanc, and Viega
* Exploiting Software by Greg Hoglund and Gary McGraw
* Secure Programming Cookbook for C and C++ by Viega and Messier
* Understanding the Linux Kernel by Bovet and Cesati
* Linux System Programming by Love
* Hacking: The Art of Exploitation by Erickson
* THe Art of Software Security Assessment by Dowd, McDonald, and Schuh
* [The "Ultimate" Anti-Debugging Reference by Peter Ferrie](https://anti-reversing.com/Downloads/Anti-Reversing/The_Ultimate_Anti-Reversing_Reference.pdf)
* [LiveOverFlow](https://www.youtube.com/channel/UClcE-kVhqyiHCcjYwcpfj9w)
* [StackOverFlow](https://stackoverflow.com/)

### Project Timeline

![Project Timeline](/MPD-Timeline.png)

### Assessment Plan

The assessment plan will follow closely with the tasks outlined in the gantt chart. Our team is not centered around creating a product as much as it is assessing the security of both the reference design and the eventual creation of the team at large. For this reason prototype demonstrations are not entirely applicable to our assessment. For the automated attacks phase this would most likely come into play by illustrating that we have created some automated form of exploiting common vulnerabilities in the reference design and for the software security team, it will be the discussion/presentation of the security or anti-reverse engineering measures that were taken or implemented. The remainder of our assessment will most likely depend on continual documentation of our research into the security of miPod designs (both ours and other teams' designs). In total, our assessment will be made up of about 50% prototype demonstrations/presentations and 50% reports/documentation. These demonstrations/presentations will be a combination of design prototypes as well as exploit prototypes.

## The Zune Devs

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

##### Usage:

```bash
./protectSong --region-list <REGION_LIST> --region-secrets-path <PATH_TO_REGION_SECRETS> --infile <PATH_TO_SONG> --outfile <PATH_TO_OUTPUT_SONG> --owner <USER> --user-secrets-path <USER_SECRETS>
```

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

This script is used to provision the secret components for an ecosystem of devices belonging to various regions. It will only be run once to globally provision all regions. <code>CreateRegions.py</code> takes in 1 parameter, <code>&lt;REGION_LIST&gt;</code>.

##### Usage:

```bash
./createRegions –-region-list <REGION_LIST> --outfile <REGION_SECRETS>
```

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
It is important to note that <code>priv_key</code> should **never** go on the device, only <code>priv_key_enc</code>. This is only generated to be passed to children scripts.

#### CreateUsers.py

This script is used to provision all possible users that could exist on any device. It will only be run once to globally provision all provided users. <code>CreateUsers.py</code> takes in 1 parameter, <code>&lt;USER_PIN_LIST&gt;</code>.

##### Usage:

```bash
./createUsers --user-list <USER_PIN_LIST> --outfile <USER_SECRETS>
```

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
It is important to note that the <code>pin</code> and <code>pvt_key</code> should **never** go on the device, only <code>pin_hash</code> and <code>pvt_key_enc</code> respectivly. These is only generated to be passed to children scripts.

<code>createDevice.py</code> should output <code>device_secrets</code> in the following format:

```c

#ifndef SECRETS_H
#define SECRETS_H

#define NUM_PROVISIONED_REGIONS 2



struct R_Data {
    char *pub_key;
    char *priv_key;
    char *rand;
};

struct R_Data region_data[2];

struct R_Data Canada = { "ea7ac8e4071dcd5da97c46906adeb38cfdc45e3a7e1a77fafe89b969a322484e", "d42fd75e04672802275328456040ed52374a862441bba7fafdfe598f67fe5760af35d2e6c1bcf09423d5cd7c0d5ceae3fb88aa49d4cceae9e9accc283bafb0da4acdb50f9edaf961", "bb57a11b66efa7190fb18ddf2fd7f1503dfc0487436453daeddadc85d4a3c521" };
struct R_Data USA = { "8bfa59f7db48603f89894615f462984e7bfdd230251569b73ffcef6529654254", "832047f041e9d5c556f30cfca94af42e56ad1f40fe09da4cd192b3685ece1b13fdecdbf530fcb6a68062e6262e8415c4541f875859ffc2c45812cb8560df188fdb99fbc3b9fae9c9", "a864181554b109af422435fcf5f8ecde5724839acbdbfcfcf75a1744eec8b402" };


struct U_Data {
    char *hw_secret;
    char *pin_hash;
    char *pub_key;
    char *pvt_key;
    char *salt;
};

struct U_Data user1 = {  "0f107a6e044096ceb1a1", "$argon2id$v=19$m=65536,t=2,p=1$aTDsfn5xzuXYCQGCVbQN/A$NPeXpxDAxBItyc0T5Re9mjbSpeSgHo42RvsfR/jgivs", "6a3f6a4cbc5aeff1935536e271b987bf062d42e9fa551cd7914e335ce535cc6e", "5a642275cec89b0bb660f665dbb41b619d1310d35232f7ff54725f88e9336204e862cbeaaa3cd05f4d94077beb4d7249c08049cd52d3363e409ad327a513efeb62288176b4e28aac", "ef510ff4f5ac5c9b0f8698f1eec21dc3" };
struct U_Data user2 = {  "06e948d27bddf81b5331", "$argon2id$v=19$m=65536,t=2,p=1$1FV86KT72ZsxKcLa1UYD8Q$WsznfN6EgKqnkrdpNJMJcYsBVUHe90KbSNMHV92Wx4k", "e6b3074dca47e57b9d08f1e412e58f12715aa6828aeff02e28e6fbcf70aa5b4b", "97e458a56e552f868487264b3f5406a506f436632aaa8fef13e8ff9d04aef76b8614fc52ee1f7c0fbea47532372bcff5ed7ad40f1c7ea47f2a8031a8a0c3d910ef7536f538b25f12", "47006afbcbcdce2284600b895cdb4186" };


#define ROOT_VERIFY "35653930656464626466313231653064633631653837643961306333333238623966313333376264373539376435396663383739623531356136323962356666"

#endif // SECRETS_H

```

#### Known Weaknesses

First 30 seconds if secret is stolen can be played off of the device

If the region private key is stolen then the regionkey can be used on another device to play a song. This needs to be as hard as possible to steal.

If the hardware secret is compromised and the pin is compromised (very likely for this flag) then a song can be generated using our own protectsong function.

DecryptSong.c (30 second song) is a point of weakness for custom music.


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

- DRM core dev
- DRM extras dev 
- Testing/timing each function
- Anti-RE measures
- Developing attack methods


<!-- <mermaid>
gantt
  title Zune Dev's Project Timeline
  dateFormat  DD-MM-YYYY
  section Competition <br>Phases
    Secure Design    :a1, 01-15-2020, 42d
    Attack           :after a1  , 20d
  section Zune Devs
    Task in sec      :2014-01-12  , 13d
    another task      : 24d

</mermaid> -->

### Assessment Plan

A wholistic assessment plan for this team should take the following into consideration:

**Timeliness:** How well did we follow MITRE's timeline? How well did we follow our own timeline and, in the event of falling behind, was there a legitimate roadblock and how did we address it?

**State of the Art:** Are we using third party libraries with known vulnerabilities? Are we using libraries that make our implementation easier to secure? Are we using proven cryptographic algorithms?

**Theoretical Knowledge** Are we aware of the literature surrounding this project? Do we understand the implications of the decisions we make? Are our ideas on how to implement cryptography sound? Are we aware of the attack surface of our system? 

**Innovation:** This project gives us an opportunity to work out real world problems: how elegant are our solutions?

**Implementation:** Have we taken the above and build something that works as we designed it? How secure was our c programming really? Did we make any logical errors or bad assumptions in our implementation?

**Contribution and Collaboration:** Everyone has a role to play some people act as architects others are better technicians did everyone try reaching beyond their comfort zone to learn? Did anyone's actions create a roadblock? Is there good communication both within the team and between teams? 

## Birdwatching

The overarching theme of this competition is to create a secure system in spite of a major element being
compromised. In this case, our attackers have root access and therefore full authority over the main processor. This
significantly reduces our options to produce a secure application. The reference design suggests we answer this
challenge with a Microblaze embedded processor, isolated as much as possible from the compromised portion of the
device.

However, the provided reference design has several security issues, some of which begin at a hardware
level and can only be worsened by software vulnerabilities. These include but are not limited to:

* Some DDR memory is shared with the compromised main processor
* The Microblaze is directly interrupted by a potentially exploitable GPIO module
* Some debugging faculties are left unsecured and may be accessible through the main processor

This proposal introduces some changes to the reference design, as well as some additions, in order to
reinforce the intrinsic security as well as to improve the security of the entire solution.

### Hardware Changes

The overall layout of the programmable logic for this project will be left the same as the reference design.
However, several key channels used to communicate between the main processor and the Microblaze will be
changed to make them more secure, the overall goals for these changes are as follows.

* Reduce overall attack surface
* Protect from informed hardware attacks
* Reduce side channel vulnerabilities

The first goal will be addressed by reducing the use of the shared DDR memory present in the reference
design, since the main processor has full authority over it. The DDR memory should always be considered untrusted
and unreliable. It is preferable that the DDR is interacted with as little as possible, and that only strongly encrypted
data be stored in it. Information should only be decrypted inside the programmable logic, where it is far safer.

The second goal will be the subject of a proposed hardware integrity monitoring module. Since our
attackers have access to all the information used to create our programmable logic, including the Vivado project,
they will have copious information with which to devise hardware based attacks. Some of these attacks are
described in the hardware integrity module section bellow.

Side channel vulnerabilities, especially those that depend on fault injection, can be abated by minimizing
the coupling between the main processor and the Microblaze. We propose replacing the GPIO based interrupt
scheme with a more specialized command register, thus abstracting the DRM system, be used to do this. This
command register should be the primary means for issuing instructions to the Microblaze going forward. Side
channel resistant programming practices are also important for this goal, a primary task of the hardware team during
the both phases should be to locate such vulnerabilities.

#### Hardware Integrity Module

A hardware component should be provided to protect the other trusted components from physical attacks.
This is especially important since attackers will have access to all resources necessary to implement the
programmable logic, making such attacks highly informed and providing copious testing capabilities. The proposed
module, hereafter referred to as the Basic Integrity Recording Device (BIRD), should provide protections from two
basic forms of tampering: clock glitch attacks and voltage glitch attacks.

Clock glitch attacks are spurious rising edges injected into a system with the purpose of violating setup
times at specific points. One common use of clock glitching is to skip compare and branch instructions, which may
compromise the target system by skipping security checks or placing the machine in an illegal state.

Voltage glitch attacks are conducted by periodically shorting power to ground, creating a low voltage spike.
The goal of a voltage glitch attack is very similiar to a clock glitch attack, to cause a malfunction that then
compromises the system.

One characteristic of both types of fault attack are that in order to have useful behavior they usually need
something to base their timing off of. Often this trigger is based on power analysis, which increases the value of anti
side-channel measures.

Both types of glitch attacks, while difficult to prevent, can be detected using specialized glitch detection
circuits. These circuits are designed to be especially vulnerable to glitching, thus providing an early indication that a glitch has occurred. This indication can then by used to help secure the system, such as by issuing a reset. The
detection of glitch attacks can also be used to issue mockery to attackers via error messages. FPGA timing analysis
tools can be used to construct such a detector circuit, and the operation of such a circuit can be verified in actual
hardware by routing the clock input to a more easily accessible location.

Our target device contains two ADCs which can be configured in a window compare mode to monitor
internal voltages as well as die temperature. Each unit has a sampling rate of up to one megasample per second.
Unfortunately this sampling rate may not be fast enough to detect voltage glitches, especially since each ADC's
attention would have to be divided among several voltage rails. However, the ADCs can be used to prevent
operation at excessively high or low voltages, which could otherwise be used to exacerbate the effects of
aforementioned attacks.

We propose that both the aforementioned integrity monitoring solutions be employed within our hardware
design, as well as any fault detection features whose utility becomes apparent during software design.

#### Command Register

In contrast to the provided reference design, which sends commands via a shared area in DDR, we propose
a register based method of issuing commands to the embedded processor. Accessing this command register can be
done almost identically to configuring a peripheral on a microcontroller. Using this scheme has two primary
advantages over sharing memory.

Firstly, we will have full physical control over the behavior of the register. For example, if we detect that
the Microblaze has been compromised, we can lock the command register so that information cannot be smuggled
out of the PL.

Secondly, we can send interrupts to the embedded processor automatically when the register is written to.
This makes the issuing of commands slightly more deterministic compared to the reference, but hides the
acknowledgement by the Microblaze from the processor. This scheme may help reduce side channel vulnerability of
the embedded processor by reducing the attack surface for fault injection. In the reference design, such a fault
injection might consist of modifying values in the command channel struct while they are in use by the Microblaze.

One should note that the command register need not be a simple register. Each bit or group of bits can be
individually read or write protected, indicate status, trigger an interrupt, or perform another special function. For
example, bits may feed into a shift register or block ram. This would allow for longer commands to be shifted into a
safe area which only the Microblaze may access, again reducing the surface for fault injection attacks.

An example implementation of the command register could be structured as follows, an 8 bit alignment was
chosen to ensure that writes are made with a single instruction, and to allow use of the write strobe feature of the
AXI bus.

```
MSB                                                              LSB
[   COMMAND   (W)][   DATA IN   (W)][   STATUS   (R)][   RESP   (R)]
W: write only, reads will return zero 
R: read only, writes will have no effect
```

The command field in this instance should allow the main processor to signal any of the commands as implemented in the reference design. These are:
|               |               |
|:-------------:|:-------------:|
| load_file     | query_song    |
| login         | share_song    |
| logout        | play_song     |
| query_player  | digital_out   |

The command register and DMA should be locked whenever a fault is detected, and only unlocked after the proper booting of the Microblaze. Additionally any areas which may contain secrets should be erased, such as the microblaze RAM and ROM, and the secrets container, if one is used. This functionality should be controlled by the basic integrity recording device (BIRD) discussed above.

To avoid potential fault injection, the command register should not generate interrupts when they are not anticipated. In a scheme where the main processor polls the DRM, status flags, which may be presented in the status field in this example, should be the only method of stalling the main processor when the Microblaze is busy.

### Deliverables

The primary deliverable for the hardware team is the Vivado project with the described features added. This
is used in the final submission and is also critical for the software teams to be able to debug at a full project level. In
order to assist in software development, the hardware team should also provide code examples, utilities, and
documentation as necessary. A high level overview of the updated hardware design should also be provided to be
used with the final device documentation.

### Project Timeline

The goals of the hardware team should firstly adhere to the design milestone goals suggested by MITRE.

Additionally, we propose several dates for reaching hardware development goals.
 - 01/31/2020: Initial command register implementation
 - 02/01/2020: Relevant design document section prepared (Submission by 02/05)
 - 02/05/2020: Command register low level code examples
 - 02/07/2020: Initial BIRD (Integrity Module) implementation and preliminary testing
 - 02/12/2020: Implement optional crypto acceleration IP integration.
 - 02/20/2020: Hardware design lockout (No non-essential changes to core design)

### Reference Materials

Since this project is conducted using primary Xilinx SoC tools, namely Vivado studio, Xilinx
documentation should be the primary source for authoritative device information. Datasheets and application notes
should kept organized in case they need to referenced later. Additionally, several third party sources have proven
useful in the research leading up to this proposal. Dr. Dan Gisselquist, of Gisselquist Technologies has authored an
extensive series of tutorials and articles about hardware design, without which some of the tasks created here would
be vastly more daunting. The unending knowledge pool known as Stack Exchange has also proven useful for
answering questions pertaining to low level programming, it is forseeable that it will be used extensively, especially
when initially setting up tools.

### Assessment

A good hardware design should be assessed by its effect on the overall device development process.
Therefore an objective way to assess the hardware team’s success is by surveying the other teams impression of their
effect on the project as a whole. Some survey criteria might include
* Was the hardware team thorough in documentation?
* Did the hardware team’s changes have a positive effect on the security of the finished product?
* Was the hardware team instrumental in the various other aspects of the project?

### Learning Implications

This project, having been designed to represent a real world design problem, presents a unique learning
experience. Several topics which may not otherwise be encountered in a typical computer engineering course, such
as FPGA development, hardware security, and secure system design will be explored.
