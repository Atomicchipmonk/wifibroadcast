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


v4l2-ctl --set-fmt-video=width=${width},height=${height},pixelformat=1
v4l2-ctl --set-parm=${framerate}

gst-launch-1.0 -vv \
  uvch264src iframe-period=10 device=/dev/video0 name=src auto-start=true src.vidsrc!\
  video/x-h264,width=${width},height=${height},framerate=\(fraction\)${framerate}/1 !\
  fdsink | sudo /home/pi/development/wifibroadcast/wifibroadcast/tx -x 2 -b 8 -r 4 -f 1024 wlan1  > /home/pi/logs/vid_broadcast.txt

while true; do
	sleep 1
done
