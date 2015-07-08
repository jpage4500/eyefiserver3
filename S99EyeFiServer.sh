#!/bin/sh

# NOTE: to install as a service, copy to /usr/local/etc/rc.d
# start: /usr/local/etc/rc.d/S99EyeFiServer.sh start
# stop: /usr/local/etc/rc.d/S99EyeFiServer.sh stop

eyefiserver=/usr/local/bin/eyefiserver.py 
case $1 in
   start)
      echo "Starting EyeFi server..."
      python $eyefiserver start /etc/eyefiserver.conf /var/log/eyefiserver.log
   ;;

   stop)
      echo "Stopping EyeFi server..."
      python $eyefiserver stop /etc/eyefiserver.conf /var/log/eyefiserver.log
   ;;

   restart)
      $0 stop
      sleep 1
      $0 start
   ;;
esac
