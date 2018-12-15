#!/bin/bash

CARD=wlan0

function ctrl_c() {
	exit 0
}


cat /dev/urandom | /home/pi/development/wifibroadcast/wifibroadcast/tx -m 1 -x 2 -r 4 -b 8 ${CARD}

while true; do
    sleep 1
done
