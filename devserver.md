# DevServer Setup

Below is the overview of how to set up your build environment within the remote devserver.

## Connect to the server

1. Install the school VPN - [Cisco Anyconnect](https://www.unomaha.edu/information-technology-services/information-security/vpn/connecting-nebraska-vpn.php).

2. Connect to school VPN (the second password would be push,phone,sms, depending on your dual-authentication method).

3. SSH into the devserver: `ssh <firstletter_lastname>@137.48.185.127`

4. Log in to your github to automatically clone the eCTF20 repo in your home directory.

5. Change password. Run `chpasswd` and enter your new password twice.

6. Start VNC Server. Run `vncserver` and note down the number after the colon (ie. :1).

7. Exit SSH. CTRL+D or `exit` works.

8. Install a VNC Client (TightVNC, Vinagre, TigerVNC, RealVNC, Putty(?))

9. VNC into the devserver. When the VNC client prompts you for an IP/host write `137.48.185.127:<YOUR_NUMBER_HERE>`.

10. Continue with instructions at [Getting Started Guide](getting_started.md), for your convenience the Vivado/SDK archive file is stored in /data so there is no need to download again and take an hour, copy it to your repo with `cp /data/Xilinx_Vivado_SDK_2017.4_1216_1.tar.gz ~/eCTF20/`
