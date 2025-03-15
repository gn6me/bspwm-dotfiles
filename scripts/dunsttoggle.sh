#!/bin/bash

pauselevel=$(dunstctl get-pause-level)

if [ $pauselevel == 100 ]; then
    notify-send "Notifications are on"
else
    notify-send "Notifications are off"
    sleep 1
fi

dunstctl set-paused toggle
