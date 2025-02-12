#!/bin/sh

grimshot copy screen &
wait
wl-paste -t image/png > ~/Pictures/Screenshots/$(date "+%Y%m%d-%H%M%S")'_grim.png'
exit
