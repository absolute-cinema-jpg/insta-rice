#!/bin/bash

#Basic
export CLEAR=0x00ffffff
export WHITE=0xffffffff
export BLACK=0xff000000
export PINK=0xffe9539e
export RED=0xffb20d30
export YELLOW=0xffffcb00
export GREEN=0xff00b309
#VPN
export VPNONICON=0xffc8ffbe
export VPNONBG=0xff344b1b
export VPNOFFBG=0xffff0000

#Default
export BAR_COLOUR=$CLEAR
export BG_COLOUR=$WHITE
export LABEL_COLOUR=$BLACK
export ICON_COLOUR=$BLACK
export BG_COLOUR_ALT=$WHITE
export LABEL_COLOUR_ALT=$BLACK
export ICON_COLOUR_ALT=$BLACK

wallpaperPathname=$(osascript -e 'tell app "System Events" to launch' -e 'tell app "System Events" to get picture of current desktop')
export wallpaper=$(basename "$wallpaperPathname")
echo $wallpaper

case $wallpaper in
	"windows xp.jpg")
export BAR_COLOUR=0xcc3B77BC
export BG_COLOUR=0xffe4e372
export LABEL_COLOUR=$BLACK
export ICON_COLOUR=0xff81C046
export BG_COLOUR_ALT=$WHITE
export LABEL_COLOUR_ALT=$BLACK
export ICON_COLOUR_ALT=$LABEL_COLOUR_ALT
;;
	"japan neon.jpg")
# -- Japan Neon --
export BAR_COLOUR=0x8c3f1c42
export BG_COLOUR=0xffde2931
export LABEL_COLOUR=0xffdacca5
export ICON_COLOUR=0xff7bb69c
export BAR_COLOUR_ALT=0x5b3f1c42
export BG_COLOUR_ALT=0xffdacca5
export LABEL_COLOUR_ALT=0xff3f1c42
export ICON_COLOUR_ALT=$LABEL_COLOUR_ALT
export VPNONBG=0xff3f1c42
export VPNONICON=$LABEL_COLOUR
;;
	"plants on windowsill.jpg")
# -- Plants on Windowsill --
export BAR_COLOUR=0xff182112
export BG_COLOUR=0xff85904D
export ACCENT_COLOUR=$BAR_COLOUR
export ICON_COLOUR=0xffe4db55
export BG_COLOUR_ALT=0xff264509
export LABEL_COLOUR_ALT=$ICON_COLOUR
export ICON_COLOUR_ALT=$ICON_COLOUR
#VPN
export VPNONBG=0xff264509
;;

	"fuji.jpg")
# -- Mount Fuji Sunset --
export BAR_COLOUR=0x00ebbac6
export BG_COLOUR=0xff705e95
export LABEL_COLOUR=$WHITE
export ICON_COLOUR=0xffe2b1bd
#VPN
export VPNONICON=$WHITE
export VPNONBG=0xff52538b
export VPNOFFBG=0xffff0000

export BG_COLOUR_ALT=$VPNONBG
export LABEL_COLOUR_ALT=$LABEL_COLOUR
export ICON_COLOUR_ALT=$ICON_COLOUR
;;

	"elden ring_lands between.jpg")
# -- Elden Ring --
export BG_COLOUR=0xffb98e4a
export LABEL_COLOUR=$BLACK
export ICON_COLOUR=0xff475244
export BG_COLOUR_ALT=0xffbebc86
export ICON_COLOUR_ALT=$ICON_COLOUR
#VPN
export VPNONICON=$BG_COLOUR_ALT
export VPNONBG=0xff475244
;;

	"wedding stardew.png")
# -- Stardew Valley --
export BAR_COLOUR=0xff153739
export BG_COLOUR=0xff80a230
export LABEL_COLOUR=0xff051616
export ICON_COLOUR=0xfff3e369
export BG_COLOUR_ALT=0xff4ba57b
export LABEL_COLOUR_ALT=$YELLOW
export ICON_COLOUR_ALT=$ICON_COLOUR
;;

	"ocean sunrise.png")
# -- Sunset horizon sea --
export BAR_COLOUR=0xff090C02
export BG_COLOUR=0xff414288
export LABEL_COLOUR=0xffDEEFB7
export ICON_COLOUR=0xff98DFAF
export BG_COLOUR_ALT=0xff7d87c4
export LABEL_COLOUR_ALT=$LABEL_COLOUR
export ICON_COLOUR_ALT=$BG_COLOUR
;;
esac
