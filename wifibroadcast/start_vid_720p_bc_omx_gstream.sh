#!/bin/bash

groundip=192.168.1.190
multiip=224.1.1.1
port1=5600
width=1280
height=720
framerate=30

function ctrl_c() {
	exit 0
}

if [ ! -e /dev/video0 ]; then
	sleep 10
fi


v4l2-ctl --set-fmt-video=width=${width},height=${height},pixelformat=0

gst-launch-1.0 -vv \
  v4l2src device=/dev/video0 !\
  video/x-raw,width=${width},height=${height},framerate=\(fraction\)${framerate}/1 !\
  omxh264enc  !\
  video/x-h264,width=${width},height=${height},framerate=\(fraction\)${framerate}/1 !\
  fdsink | sudo /home/pi/development/wifibroadcast/wifibroadcast/tx -x 2 -b 8 -r 4 -f 1450 wlan1

while true; do
	sleep 1
done
