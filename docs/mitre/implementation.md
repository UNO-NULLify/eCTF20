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

## Control Register
We don't inherently trust information pulled from the front-end or the IPC mechanism. Additionally we implemented a secure register for IPC that. . .

## Watchdog

## Integrity Monitor
