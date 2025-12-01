#!/bin/sh

source $CONFIG_DIR/colours.sh

IP_ADDRESS=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
IS_VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $IS_VPN != "" ]]; then
	ICON=􀎡
	LABEL="VPN"
	BGSTATUS=$VPNONBG
	ICONSTATUS=$VPNONICON
elif [[ $IP_ADDRESS != "" ]]; then
	ICON=􀎤
	LABEL=$IP_ADDRESS
	BGSTATUS=$RED
	ICONSTATUS=$WHITE
else
	ICON=􀍼
	LABEL="Not Connected"
fi

sketchybar --set $NAME 	background.color=$BGSTATUS \
						icon.color=$ICONSTATUS \
						label.color=$ICONSTATUS \
						icon=$ICON \
						label="$LABEL"
	