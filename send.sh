tsar  -i 9  --cpu --io --mem --udp --tcp --traffic  --tcpx --load --pcsw    -l | while read line
do
  echo $line |  nc -u -w 1 172.4.0.23 8125
  echo $line 
done
