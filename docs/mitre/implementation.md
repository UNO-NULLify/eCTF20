# Security Implementation
## Protection of Flags
### Region Lock
#### Description
Play a song from a region that the player is not provisioned for.

#### Requirement
Confidentiality

#### Protection


### Unauthorized Play
#### Description
Play a song that your user does not have access to.

#### Requirement
Confidentiality/Authentication

#### Protection
We check if the user is an owner or if they have had the song shared with them, and if the player is authorized to play that song based off of region provisioning information.

Additionally . . . 


### Pin Extraction
#### Description
Obtain the pin for a user that you do not have access to.

#### Requirement
Authentication

#### Protection
We hash the pins using the cryptographically secure Argon2 algorithm.


### Music Tamper
#### Description
Modify a protected song. Deliver a file of the modified, protected song.

#### Requirement
Integrity

#### Protection


### Custom Music
#### Description
Protect a provided custom song. Deliver a file of the custom, protected song.

#### Requirement
Authentication/Confidentiality

#### Protection


## Metadata

## Crypto System

## Compiler Changes
**Original Flags**
~~~ 
mb-gcc -Wall -O0 -g3 -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~

``-Wall`` This flag is usefull in development.

``-Wextra`` Will be added to increase code quality.

``-Wconversion -Wsign-conversion`` added to warn about potential casting issues that may cause security vulnerabilities.

`` -O0`` Was the original Flag, We will be applying ``-Os`` to optimize for code size.

`` -g3`` Tells the compiler to include debug symbols, this will be replaced with ``-s -fvisability=hidden`` to strip the symbols out of the binary.

``-static`` Tells the compiler to statically link all binaries, third party libraries cant be used to affect the functionality of our code

``mxl-reorder`` To cause some chaos in reverse engeneering and exploit development by reordering instructions on run.

``-Wstack-protector --param ssp-buffer-size=4`` Adding stack protection to the elf.

``-Wl,-z,noexecstack`` Ensure the Stack is not executable.

**New Compiler Options**
~~~
mb-gcc -Wall -Wextra -Os -s -fvisibility=hidden -static -Wconversion -Wsign-conversion -fstack-check -mxl-reorder -Wstack-protector --param ssp-buffer-size=4 -ftrapv -Wl,-z,noexecstack -I"../../drm_audio_fw_bsp/microblaze_0/include" -c -fmessage-length=0 -MT"$@" -I"../../drm_audio_fw_bsp/microblaze_0/include" -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
~~~

## Data Flow

![Data Flow](/data-flow.png)

Several changes have been made to the MITRE reference design programmable logic to facilitate the implementation of an encryption scheme carried out by the microblaze. In the reference design, an AXI Direct Memory Access (DMA) module was used to transfer chunks of song to an FIFO. This fifo crosses from the main clock domain to the codec clock domain, and the I2S codec can pull samples from the FIFO at the designed sample rate, independent of the frequency of the main clock or the timing with which this FIFO is filled.

Our design introduces a new FIFO, hereafter termed the input FIFO, which becomes the new destination for the DMA. The output of this module connects directly to the microblaze via an AXI Streaming interface, a dedicated instruction in the microblaze allows a 32 bit read or write from this type of interface. Another streaming interface is used to write data to the original FIFO, now referred to as the output FIFO, which is connected to the codec. Our software need only treat these devices like pipes. Additionally, a GPIO module is provided to read the fill level of either FIFO.
	
The output FIFO's width has been changed to simplify connectivity, which requires samples to be written twice but enables future implementation of stereo audio capability with changes to software only. Also, the clock generation for the codec's clock domain can now be reconfigured by the microblaze, which would enable playback of audio with different sample rates with changes to software only.
	
~~~
	MSB                                                              LSB
[   UNUSED    (W)][   COMMAND   (W)][           STATUS          (R)]
W: write only, reads will return zero 
R: read only, writes will have no effect
~~~
	
Commands from the miPod application are now issued through a shared register which generates an interrupt on the microblaze when written. The application side of the register cannot modify any commands it has already issued, and a new interrupt shall not be dispatched until it is acknowledged by a special write issued by the microblaze. This command register is also the means by which a hardware watchdog timer is reset.

## Watchdog

The integrity-checking module served to protect against voltage and temperature attacks, but it in no way ensures that the DRM is properly operating in a timely manner. The watchdog timer’s purpose is thus to make sure that the DRM is still responsive within a short window of time. This prevents several attacks which slow or halt the MicroBlaze. 
Xilinx provides an AXI Timebase Watchdog module, which uses a dual-expiration architecture. This generates an interrupt and a state bit is changed in the status register. If the MicroBlaze fails to clear the state bit before the next timeout, the WDT generates a reset signal. Thus, if the DRM halts or lags beyond a reasonable time threshold, the PL will assume an attack is occurring and reset the MicroBlaze. This solution maps the watchdog timer registers into the address space of the MB and creates an AXI connection between the WDT and the interrupt controller. The DRM code then handles the interrupt by clearing the status bits in the WDT status register.


## Integrity Monitor

![Integrity Module Implementation](/integrity-mod.png)

While less common, it is possible to retrieve or corrupt information by temperature attacks. Extreme cold temperatures can be used to halt a processor during operation, while extreme heat can result in errors and incorrect memory loading. Similarly, it has been demonstrated that tampering with voltages can cause errors to occur while a computer is processing secret information, resulting in a leak of secrets. 
To protect against these attacks, the FPGA has a built in ADC (XADC) that monitors temperature and voltage sensors. The module contains status registers which can be read either via JTAG or programmable logic. 7 alarm registers are also included as output signals which are active-HIGH. The alarms given, along with their respective status registers are shown in the figure below. Since the XADC also connects to the processing system via AXI, it is also possible to read the status registers from the processing system; however, it is better practice to read the status using the programmable logic. The solution arrived at was to combine the signals into an active-LOW reset signal using a 7-input NOR module whose output is tied to the proc_sys_reset module. 

![Alarm Registers](/alarm-reg.png)
