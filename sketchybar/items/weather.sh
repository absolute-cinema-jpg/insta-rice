#!/bin/bash

sketchybar  --add item weather q \
            --set weather \
	      icon=􂬮 \
              update_freq=3600 \
              script="$PLUGIN_DIR/weather.sh"
