#!/bin/bash
CARD=wlan1


sudo ifconfig ${CARD} down
sudo iw dev ${CARD} set monitor otherbss fcsfail
sudo ifconfig ${CARD} up
sudo iwconfig ${CARD} channel 13
