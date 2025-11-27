#! /bin/zsh

dir=~/Desktop
iconpath="/Users/alexstuart/Desktop/folder icons/purple/folderIconPurple.icns"

find $dir -maxdepth 1 -mindepth 1 -type d -exec fileicon set {} $iconpath \;
