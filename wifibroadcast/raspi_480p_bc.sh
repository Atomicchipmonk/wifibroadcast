#!/bin/bash

width=720
height=480
framerate=25

function ctrl_c() {
	exit 0
}

raspivid -t 0 -h $height -w $width -fps $framerate -ih -hf -b 1200000 -o - | sudo /home/pi/development/wifibroadcast/wifibroadcast/tx -x 4 -b 16 -r 8 -f 512 wlan1



while true; do
	sleep 1
done
