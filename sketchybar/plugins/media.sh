#!/bin/bash

# Check if Spotify is running and playing
SPOTIFY_STATE=$(osascript -e 'tell application "Spotify" to if it is running then return player state')
if [ "$SPOTIFY_STATE" = "playing" ]; then
    MEDIA=$(osascript -e 'tell application "Spotify" to get name of current track & " - " & artist of current track')
    sketchybar --set $NAME label="$MEDIA" drawing=on
    exit 0
fi

# Check if Apple Music is running and playing
MUSIC_STATE=$(osascript -e 'tell application "Music" to if it is running then return player state')
if [ "$MUSIC_STATE" = "playing" ]; then
    MEDIA=$(osascript -e 'tell application "Music" to get name of current track & " - " & artist of current track')
    sketchybar --set $NAME label="$MEDIA" drawing=on
    exit 0
fi

# If no media is playing, hide the item
sketchybar --set $NAME drawing=off
