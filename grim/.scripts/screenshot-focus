#!/bin/sh

# Save screenshot of focused window to file

grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" ${XDG_SCREENSHOTS_DIR:-${XDG_PICTURES_DIR:-$HOME/Pictures}/screenshots}/$(date +'%y%m%d_%H%M%S.png')
