#!/bin/bash

CARD=wlan0

function ctrl_c() {
	sudo kill -9 `pidof netcat`
	sudo kill -9 `pidof socat`
	sudo kill -9 `pidof tx`
	sudo kill -9 `pidof tx`
	exit 0
}


#nc -ul 14551 > /tmp/fifo1
#socat -u UDP4-RECVFROM:14551,fork,reuseaddr,keepalive STDOUT | /home/pi/development/wifibroadcast/wifibroadcast/tx -m 1 -x 2 -r 4 -b 8 wlan0 &
cat /dev/urandom | /home/pi/development/wifibroadcast/wifibroadcast/tx -m 1 -x 2 -r 4 -b 8 ${CARD}

while true; do
    sleep 1
done
