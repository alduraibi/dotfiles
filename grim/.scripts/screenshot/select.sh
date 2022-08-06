#!/bin/sh

# Save screenshot of selected area to clipboard

grim -g "$(slurp)" ${XDG_SCREENSHOTS_DIR:-${XDG_PICTURES_DIR:-$HOME/Pictures}/screenshots}/$(date +'%y%m%d_%H%M%S.png')
