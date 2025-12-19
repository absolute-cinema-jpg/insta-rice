#! /bin/zsh

quotePath="$HOME/github/insta-rice/sketchybar/text/quotes.txt"

lineCount=$(cat $quotePath | wc -l)

quoteCount=$(($lineCount / 3))

quoteCount=$(($lineCount / 3))

pickedQuote=$(( $RANDOM % $(($quoteCount + 1)) ))

quoteLine=$(($pickedQuote * 3 - 1))

finalQuote=$(cat $quotePath | head -n $quoteLine  | tail -n 2)

$BAR_NAME --set "$NAME" label="$finalQuote"


