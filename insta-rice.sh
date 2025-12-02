#! /bin/zsh

selected_file=$(osascript -e 'POSIX path of (choose file)')

osascript -e "tell application \"System Events\"
set picture of every desktop to \"$selected_file\"
end tell"
/opt/homebrew/bin/sketchybar --reload

targetdir=~/Desktop
icondir=~/Desktop/icons/folders

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
esac
find $targetdir -maxdepth 1 -mindepth 1 -type d -exec fileicon set {} $icondir/$icon \;

killall Finder
