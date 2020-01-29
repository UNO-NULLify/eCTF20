# The Zune Devs

## Intial Plan

### Process

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
    section Another
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

