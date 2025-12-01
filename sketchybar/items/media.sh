#!/bin/bash

sketchybar --add item media right \
           --set media label.max_chars=25 \
                       scroll_texts=on \
                       label.scroll_duration=200 \
                       icon=􀑪             \
                       script="$PLUGIN_DIR/media.sh" \
                       update_freq=15 \
                       background.color=$BG_COLOUR_ALT \
                       label.color=$LABEL_COLOUR_ALT \
                       icon.color=$ICON_COLOUR_ALT \
           --subscribe media media_change
