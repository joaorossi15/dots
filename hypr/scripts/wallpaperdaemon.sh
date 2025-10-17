#!/bin/bash

swww query
if [ $? -eq 1 ]; then
  swww-daemon --format xrgb &

  swww img ~/.config/swww/pixel/redleaves.png \
    --transition-type "none" \
    --transition-duration 0
fi
