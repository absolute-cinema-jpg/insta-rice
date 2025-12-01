#! /bin/zsh
cliclick cp:. | head -n 1 | awk '{printf "0xff%02x%02x%02x", $1, $2, $3 }' | pbcopy
