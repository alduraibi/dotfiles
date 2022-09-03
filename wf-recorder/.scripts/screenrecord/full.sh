#!/bin/sh

# Save screenrecord of full screen to file

wf-recorder -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') -f "${XDG_SCREENRECORD_DIR:-${XDG_VIDEOS_DIR:-$HOME/Videos}/screenrecord}/$(date +'%y%m%d_%H%M%S.mp4')"
