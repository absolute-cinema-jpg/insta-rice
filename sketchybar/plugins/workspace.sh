#!/bin/sh

WORKSPACE_NO=$(aerospace list-workspaces --focused)

sketchybar  --set $NAME label=$WORKSPACE_NO \