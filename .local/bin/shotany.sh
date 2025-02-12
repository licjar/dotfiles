#!/bin/sh

grimshot copy anything &
wait
wl-paste -t image/png > ~/Pictures/Screenshots/$(date "+%Y%m%d-%H%M%S")'_grim_any.png'
exit
