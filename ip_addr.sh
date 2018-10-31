#!/bin/bash
notify-send "wlan0" `ifconfig | grep wlan0 -A 1 | tail -n 1 | cut -d" " -f13`
