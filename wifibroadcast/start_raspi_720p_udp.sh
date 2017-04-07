#!/bin/bash

width=1280
height=720
framerate=30

function ctrl_c() {
	exit 0
}

raspivid -t 0 -h $height -w $width -fps 25 -ih -hf -b 2000000 -o - | socat -b 1024 - udp4-datagram:192.168.1.100:5000



while true; do
	sleep 1
done
