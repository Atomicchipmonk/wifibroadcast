#!/bin/bash

sudo ifconfig wlan0 down
sudo iw dev wlan0 set monitor otherbss fcsfail
sudo ifconfig wlan0 up
sudo iwconfig wlan0 channel 3
