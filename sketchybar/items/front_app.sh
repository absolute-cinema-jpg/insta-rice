#!/bin/bash

$BAR_NAME --add item front_app left \
           --set front_app       background.color=$BG_COLOUR \
                                 label.color=$LABEL_COLOUR \
                                 icon.font="sketchybar-app-font:Regular:16.0" \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched
