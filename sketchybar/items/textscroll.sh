#!/bin/bash

sketchybar  --add item textscroll q \
            --set textscroll script="$PLUGIN_DIR/textscroll.sh" \
                             scroll_texts=on \
                             label.max_chars=60 \
                             label.scroll_duration=700\
                             background.color=$BG_COLOUR_ALT\
                             label.color=$LABEL_COLOUR_ALT\
                             
