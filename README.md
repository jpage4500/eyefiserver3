eyefiserver3
============

A standalone Eye-Fi server in Python, for Linux

This is basically the same core server and configuration from https://github.com/dgrant/eyefiserver2 with some logging tweaks and a simple script to send a notification e-mail when uploading is complete.

I'm running this server on my Synology NAS which is a great fit for the Eye-Fi card. I just turn on my camera when home and leave it on while all the pictures I've taken are uploaded.

For cloud backup, I have a Windows PC with the desktop Google Photos client installed which will detect any new files on the NAS drive and upload them. However, this PC isn't on all the time - hence the reason for this eyefi server!.

I'll list out all steps taken to get this working on my NAS (DS512j running DSM 5.X) SOON...

In the meantime, here's the basic guide I followed: https://github.com/dgrant/eyefiserver2/wiki/Synology-NAS---Installation-procedure

