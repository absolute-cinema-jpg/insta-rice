#!/bin/bash

TEXT=$(cat ~/.config/sketchybar/text/quotes.txt)

$BAR_NAME --set $NAME label="$TEXT"
