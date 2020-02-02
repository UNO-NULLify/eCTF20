# Multiple Priority Disorder
Aaron Wurtele, Jacob Mohrbutter, Greg Baltzer, Marvin Roca Ruano (volunteer)

## Initial Plan
### Our Team

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

## Compiler Flags
**Original Flags**
~~~ 
mb-gcc -Wall -O0 -g3 -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~

``-Wall`` This flag is usefull in development.

``-Wextra`` Will be added to increase code quality.

``-Wconversion -Wsign-conversion`` added to warn about potential casting issues that may cause security vulnerabilities.

`` -O0`` Was the original Flag, We will be applying ``-Os`` to optimize for code size.

`` -g3`` Tells the compiler to include debug symbols, this will be replaced with ``-s -fvisability=hidden`` to strip the symbols out of the binary.

``-static`` Tells the compiler to statically link all binaries so we will not rely on third party functions.

``mxl-reorder`` To cause some chaos in reverse engeneering and exploit development by reordering instructions on run.

``-Wstack-protector --param ssp-buffer-size=4`` Adding stack protection to the elf.

``-Wl,-z,noexecstack`` Ensure the Stack is not executable.

**New Compiler Options**
~~~
mb-gcc -Wall -Wextra -Os -s -fvisibility=hidden -static -Wconversion -Wsign-conversion -fstack-check -mxl-reorder -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,relro,-z,now -Wl,-z,noexecstack -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~
