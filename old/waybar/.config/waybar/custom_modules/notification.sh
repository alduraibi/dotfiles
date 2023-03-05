#!/bin/sh

pause_status=$(notification-pause_status)

if [ "$pause_status" = "true" ]; then
  pause_status="paused"
else
  pause_status="unpaused"
fi


JSON_STRING=$( jq -n \
  --arg ps "$pause_status" \
  '{alt: $ps, class: $ps}' )

echo $JSON_STRING
