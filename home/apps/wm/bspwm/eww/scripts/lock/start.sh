#!/bin/sh
killall sxhkd && 
sxhkd -c ~/.config/eww/scripts/lock/bind & 
eww open lock-blur &&
eww open lock-menu &

