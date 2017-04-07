#!/bin/bash

CARD=wlx00c0ca9233f8

sudo ./rx -b 8 -r 4 -f 1024 ${CARD} | gst-launch-1.0 -vv fdsrc ! tee name=t t. ! queue ! h264parse ! avdec_h264 ! autovideosink sync=false \
#  t. ! queue ! filesink location=/home/heisty/Videos/video_out.h264
