#!/bin/sh

if [ $# != 2 ]
then
      echo "Usage: tsar-udp server_ip server_port"
else

tsar  -i 10  --cpu --io --mem --udp --tcp --traffic  --tcpx --load --pcsw    -l | while read line
do
  echo $line |  nc -u -w 0 $1 $2
  echo $line 
done

fi
