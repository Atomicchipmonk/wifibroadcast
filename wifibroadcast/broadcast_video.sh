#!/bin/bash

while ! ifconfig | grep -F "wlan1" > /dev/null; do
  sleep 1
  echo "sleeping"
done

/home/pi/development/wifibroadcast/wifibroadcast/card_setup.sh

/home/pi/development/wifibroadcast/wifibroadcast/start_raspi_720p_bc.sh &
