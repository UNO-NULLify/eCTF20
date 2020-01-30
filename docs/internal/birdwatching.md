# Bird Watching

## Initial Plan

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

## Week 1

