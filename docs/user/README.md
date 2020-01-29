# Usage

## Command Information

Command | Argument(s) | Action if Logged in | Action if Not Logged in
---|---|---|---
login | `<Username> <Pin>` | Invalid command | Verify username and pin are valid; log in the specified user
logout | | Log out the current user | Invalid Command
play | `<song_name>` | Verify that the current user owns the song (or has had the song shared with them), and that the song shares a region with the player. If both conditions are met, play the full song. Otherwise, play a 30 second preview. | Play a 30 second preview of the song.
pause | | If a song is playing, pause the song. Otherwise, invalid command. | If a song is playing, pause the song. Otherwise, invalid command.
resume | | If a song was paused, resume playing. Otherwise, invalid command. | If a song was paused, resume playing. Otherwise, invalid command.
stop | | If a song is playing, stop the song. Otherwise, invalid command. | If a song is playing, stop the song. Otherwise, invalid command.
restart | | Restart the song from time = 0:00. | Restart the song from time = 0:00.
share | `<song_name> <username>` | Verify that the current user owns the specified song. If so, share it with the specified user. Otherwise, invalid command. | Invalid command.
digital_out | `<song_name>` | Output the contents of a song to a digital file as opposed to playing over the audio jack. If the current user owns the song (or has had the song shared with them), and the song matches the board region, output the song in full. Otherwise, it should output 30 seconds of audio. | Output 30 seconds of samples of the audio file to a digital file as opposed to playing over the audio jack.
query | `<song_name>` | List the users and regions that a song has been provisioned for. | List the users and regions that a song has been provisioned for.

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