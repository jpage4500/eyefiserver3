#!/bin/sh

echo press any key to install and restart eyefi server
read n

cp eyefiserver.conf /etc

cp S99EyeFiServer.sh /usr/local/etc/rc.d

cp eyefiserver.py /usr/local/bin
cp eyefi-notify.sh /usr/local/bin
cp eyefi-restart.sh /usr/local/bin

eyefi-restart.sh
