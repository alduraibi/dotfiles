#!/bin/sh

# Save screenrecord of selected area to file

wf-recorder -g "$(slurp)" -f "${XDG_SCREENRECORD_DIR:-${XDG_VIDEOS_DIR:-$HOME/Videos}/screenrecord}/$(date +'%y%m%d_%H%M%S.mp4')"
