selected_file=$(osascript -e 'POSIX path of (choose file)')

osascript -e "tell application \"System Events\"
set picture of every desktop to \"$selected_file\"
end tell"
/opt/homebrew/bin/sketchybar --reload
