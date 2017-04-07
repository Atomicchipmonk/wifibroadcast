#!/bin/bash

width=1280
height=720
framerate=30

function ctrl_c() {
	exit 0
}

raspivid -t 0 -h $height -w $width -fps 25 -ih -hf -b 2000000 -o - | sudo /home/pi/development/wifibroadcast/wifibroadcast/tx -x 3 -b 8 -r 4 -f 1024 wlan1



while true; do
	sleep 1
done
