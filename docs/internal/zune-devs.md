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
