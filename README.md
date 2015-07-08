eyefiserver3
============

A standalone Eye-Fi server in Python, for Linux

This is basically the same core server and configuration from https://github.com/dgrant/eyefiserver2 with some logging tweaks and a simple script to send a notification e-mail when uploading is complete.

I'm running this server on my Synology NAS which is a great fit for the Eye-Fi card. I just turn on my camera when home and leave it on while all the pictures I've taken are uploaded.

For cloud backup, I have a Windows PC with the desktop Google Photos client installed which will detect any new files on the NAS drive and upload them. However, this PC isn't on all the time - hence the reason for this eyefi server!.

Installation
===

Here's all the steps I took to get this working on my Synology NAS (DS512j running DSM 5.1): 

**Requirements**

- ssh enabled
- Installed Packages:
  - Python3
  - Python Module
  - Mail Server
    - for configuration help, see https://swisstechiethoughts.wordpress.com/2014/01/20/howto-send-mail-from-synology-nas-commandline-using-google-mail-relay/
- an Eye-Fi card setup and configured to send pictures to a Mac or PC (which you'll need to get the UPLOAD key from later)

**Install**

- Copy all the files in this git repo to the NAS device
- Edit eyefiserver.conf to include YOUR eye-fi card's MAC address and UPLOAD key, which can be found in C:\Documents and Settings\<User>\Application Data\Eye-Fi\Settings.xml (windows)
 or ~/Applications Data/Eye-Fi/Settings.xml (mac)
- Edit eyefi-notify.sh script and change the FROMADDRESS@gmail.com and TOADDRESS@gmail.com (from and to addresses for the notification e-mail)
- Make sure the scripts are executable in case these permissions were lost at some point

`
chmod 777 *
`

- Run eyefi-install.sh which should put everything in place on the device and start (or re-start) it.

`
. ./eyefi-install.sh
`

NOTE: here's the guide I followed initially for reference (https://github.com/dgrant/eyefiserver2/wiki/Synology-NAS---Installation-procedure) in case anything's not clear

Support
===

- The first place to look if anything isn't working is /var/log/eyefiserver.log

- Make sure you disable the Eye-Fi Helper which is running on your Mac or PC.

- When I initially set the Eye-Fi Helper software up on my Mac, I first changed the computer's name to my NAS's device name. I read about this here: http://thijs.elenbaas.net/2013/03/installing-an-eye-fi-server-on-a-synology-nas/. I'm not sure it's necessary or not.. my gut says 'yes' since that's how the eye-fi card connects to your server. But, on that same site there's a comment saying it's not.. anyway, something to check if the initial setup doesn't work.