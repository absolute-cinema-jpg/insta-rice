#!/bin/bash

TEXT=$(cat ~/.config/sketchybar/text/quotes.txt)

sketchybar --set $NAME label="$TEXT"