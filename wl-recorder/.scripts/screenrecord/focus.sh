#!/bin/sh

# Save screenrecord of focused window to file

wf-recorder -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" -f "${XDG_SCREENRECORD_DIR:-${XDG_VIDEOS_DIR:-$HOME/Videos}/screenrecord}/$(date +'%y%m%d_%H%M%S.mp4')"
