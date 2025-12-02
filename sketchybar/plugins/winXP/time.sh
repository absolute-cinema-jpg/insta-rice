#! /bin/zsh
#
if [[ $(date +%H) -ge 12 ]]; then
	meridiem="PM"
else
	meridiem="AM"
fi

$BAR_NAME --set "$NAME" label="$(date +'%H:%M') $meridiem"
