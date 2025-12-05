#! /bin/zsh

wallpaperPathname=$(osascript -e 'tell app "System Events" to launch' -e 'tell app "System Events" to get picture of current desktop')

selected_file=$(osascript -e 'POSIX path of (choose file)')

if [[ "$selected_file" == "" ]]; then
	exit 1
fi

osascript -e "tell application \"System Events\"
set picture of every desktop to \"$selected_file\"
end tell"

/opt/homebrew/bin/sketchybar --reload
/opt/homebrew/bin/bottom_bar --reload
/opt/homebrew/bin/winXP_bar --reload

targetdir="$HOME/Desktop"
icondir="$HOME/Desktop/icons/folders"

echo $(basename $selected_file)

case $(basename $selected_file) in
	"windows xp.jpg")
		icon="windows xp.icns"
		afplay '/Users/alexstuart/Library/Sounds/Microsoft Windows XP Startup Sound.mp3'
	;;
	"japan neon.jpg")
		icon="red.png"
	;;
	"fuji.jpg")
		icon="purple.png"
	;;
	"wedding stardew.png")
		icon="forest green.png"
	;;
	"plants on windowsill.jpg")
		icon="forest green.png"
	;;
	"elden ring_lands between.jpg")
		icon="elden ring.png"
	;;
esac
find $targetdir -maxdepth 1 -mindepth 1 -type d -exec fileicon set {} $icondir/$icon \;

killall Finder
