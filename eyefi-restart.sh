#!/bin/sh

PID_FILE=/tmp/eyefiserver.pid

if [ -f $PID_FILE ]
then
    PID=`cat $PID_FILE`
    echo stopping eyefiserver - pid:$PID
    kill -9 $PID

    sleep 1

    rm $PID_FILE
fi

echo 'starting eyefiserver'
/usr/local/etc/rc.d/S99EyeFiServer.sh start

PID=`cat $PID_FILE`
echo eyefiserver - pid:$PID
