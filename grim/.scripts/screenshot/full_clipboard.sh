#!/bin/sh

# Save screenshot of full screen to clipboard

grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') - | wl-copy
