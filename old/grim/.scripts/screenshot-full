#!/bin/sh

# Save screenshot of full screen to file

grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') ${XDG_SCREENSHOTS_DIR:-${XDG_PICTURES_DIR:-$HOME/Pictures}/screenshots}/$(date +'%y%m%d_%H%M%S.png')
