#!/bin/bash

# Check if Spotify is running and playing
SPOTIFY_STATE=$(osascript -e 'tell application "Spotify" to if it is running then return player state')
if [ "$SPOTIFY_STATE" = "playing" ]; then
    MEDIA=$(osascript -e 'tell application "Spotify" to get name of current track & " - " & artist of current track')
    $BAR_NAME --set $NAME label="$MEDIA" drawing=on
    exit 0
fi

# If no media is playing, hide the item
$BAR_NAME --set $NAME drawing=off
