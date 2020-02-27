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


## Compiler


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
