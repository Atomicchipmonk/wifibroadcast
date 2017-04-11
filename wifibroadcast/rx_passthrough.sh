#!/bin/bash

CARD=wlan1

sudo ./rx -b 8 -r 4 -f 1024 ${CARD} | socat -b 1024 - udp4-datagram:127.0.0.1:5000
#  t. ! queue ! filesink location=/home/heisty/Videos/video_out.h264
