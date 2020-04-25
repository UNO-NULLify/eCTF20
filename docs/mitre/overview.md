# System Overview

## Introduction

The field that we decided to do it in, the choice we made, was music. Now, why music? Well, we love music. We have a created a major breakthrough in the music and technology. Introducing, **miPod**. What is miPod? miPod is a WAV music player that only supports one file format, doesn't fit in your pocket and holds up to 64 songs...maybe. The coolest thing about miPod is it's a family sharing device so instead of everyone having their own device we decided to modernize by allowing one device to hold up to 64 different people.


![Cora Z7-07S Board](/board.png)

## Usage

## miPod Command Information

Command | Argument(s) | Action if Logged in | Action if Not Logged in
---|---|---|---
help | | Print out the available commands. | Print out the available commands.
login | `<Username> <Pin>` | Invalid command | Verify username and pin are valid; log in the specified user
logout | | Log out the current user | Invalid Command
query | `<song_name>` | List the users and regions that a song has been provisioned for. | List the users and regions that a song has been provisioned for.
play | `<song_name>` | Verify that the current user owns the song (or has had the song shared with them), and that the song shares a region with the player. If both conditions are met, play the full song. Otherwise, play a 30 second preview. | Play a 30 second preview of the song.
share | `<song_name> <username>` | Verify that the current user owns the specified song. If so, share it with the specified user. Otherwise, invalid command. | Invalid command.
digital_out | `<song_name>` | Output the contents of a song to a digital file as opposed to playing over the audio jack. If the current user owns the song (or has had the song shared with them), and the song matches the board region, output the song in full. Otherwise, it should output 30 seconds of audio. | Output 30 seconds of samples of the audio file to a digital file as opposed to playing over the audio jack.
exit | | Exits the miPod application. | Exits the miPod application.

## Media Command Information
Command | Action if Song is Playing | Action if Song is Paused
---|---|---
pause | Pause the song. | Invalid command.
resume | Invalid command. | Resume playing.
stop | Stop the song. | Invalid command.
restart | Restart the song from time = 0:00. | Restart the song from time = 0:00.
ff | Seek the song forwards 5 seconds. | Invalid command.
rw | Seek the song backwards 5 seconds. | Invalid command.
ffff | Turns on the song's fastboi mode. | Invalid command.


## Operating Times

Operation | Average Time for Completion | Max Time for Completion
--- | --- | ---
DRM boot up | -- | 5 seconds
Starting the miPod application | -- | 1 second
Log in/out | -- | 1 second
Play audio | -- | 1 second
Pause audio | -- | 1 second
Resume audio | -- | 1 second
Restart audio | -- | 1 second
Query | -- | 2 seconds
Jump forwards/backwards | -- | 2 seconds
Digital output mode | -- | No longer than the length of the song
Share song | -- | 5 seconds