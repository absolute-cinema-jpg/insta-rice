#!/bin/bash

sketchybar --set $NAME label="$(curl wttr.in/london?format=%t)"
