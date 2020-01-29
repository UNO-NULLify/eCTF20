# The Zune Devs

## Intial Plan

### Process

### Implications

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
