#!/bin/bash
CARD=wlx00c0ca9233f8


sudo ifconfig ${CARD} down
sudo iw dev ${CARD} set monitor otherbss fcsfail
sudo ifconfig ${CARD} up
sudo iwconfig ${CARD} channel 13
