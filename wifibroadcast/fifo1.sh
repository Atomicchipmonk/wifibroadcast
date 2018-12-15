#!/bin/bash

#nc -ul 14551 > /tmp/fifo1
socat -u UDP4-RECVFROM:14551,fork,reuseaddr,keepalive STDOUT | /home/pi/development/wifibroadcast/wifibroadcast/tx -m 1 -x 2 -r 4 -b 8 wlan0 &

cat /dev/urandom | netcat -q3 -4u localhost 14551
