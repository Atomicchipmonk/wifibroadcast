#!/bin/bash

CARD=wlx00c0ca9233f8

sudo ./rx -b 8 -r 4 -f 1024 ${CARD}
#  t. ! queue ! filesink location=/home/heisty/Videos/video_out.h264
