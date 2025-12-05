#!/bin/bash

$BAR_NAME --set $NAME label="$(curl wttr.in/london?format=%t)"
