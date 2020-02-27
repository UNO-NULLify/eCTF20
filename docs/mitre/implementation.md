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

## Binary Protections


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

## String Obfuscation

## Patch Prevention

## Data Flow

![Data Flow](/data-flow.png)

Several changes have been made to the MITRE reference design programmable logic to facilitate the implementation of an encryption scheme carried out by the microblaze. In the reference design, an AXI Direct Memory Access (DMA) module was used to transfer chunks of song to an FIFO. This fifo crosses from the main clock domain to the codec clock domain, and the I2S codec can pull samples from the FIFO at the designed sample rate, independent of the frequency of the main clock or the timing with which this FIFO is filled.

Our design introduces a new FIFO, hereafter termed the input FIFO, which becomes the new destination for the DMA. The output of this module connects directly to the microblaze via an AXI Streaming interface, a dedicated instruction in the microblaze allows a 32 bit read or write from this type of interface. Another streaming interface is used to write data to the original FIFO, now referred to as the output FIFO, which is connected to the codec. Our software need only treat these devices like pipes. Additionally, a GPIO module is provided to read the fill level of either FIFO.
	
The output FIFO's width has been changed to simplify connectivity, which requires samples to be written twice but enables future implementation of stereo audio capability with changes to software only. Also, the clock generation for the codec's clock domain can now be reconfigured by the microblaze, which would enable playback of audio with different sample rates with changes to software only.
	
Commands from the miPod application are now issued through a shared register which generates an interrupt on the microblaze when written. The application side of the register cannot modify any commands it has already issued, and a new interrupt shall not be dispatched until it is acknowledged by a special write issued by the microblaze. This command register is also the means by which a hardware watchdog timer is reset.

## Watchdog

## Integrity Monitor
