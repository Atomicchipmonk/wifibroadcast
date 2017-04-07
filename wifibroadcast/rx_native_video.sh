#!/bin/bash

sudo ./rx -b 8 -r 4 -f 1024 wlan0 | gst-launch-1.0 -vv fdsrc ! h264parse ! avdec_h264 !  autovideosink sync=false
