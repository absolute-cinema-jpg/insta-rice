#! /bin/zsh

dir=~/Desktop
iconpath="$HOME/Desktop/folder icons/purple/folderIconPurple.icns"

find $dir -maxdepth 1 -mindepth 1 -type d -exec fileicon set {} $iconpath \;
