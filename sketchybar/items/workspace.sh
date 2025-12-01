#!/bin/bash

  sketchybar --add item workspace left \
             --set workspace  script="$PLUGIN_DIR/workspace.sh" \
                              icon.padding_left=0 \
                              update_freq=1 \
             --subscribe workspace front_app_switched \