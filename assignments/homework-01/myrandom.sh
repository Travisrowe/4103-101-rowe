#!/bin/bash
#Prints a random word

let a=$RANDOM%250000

echo "Random Word: "
cat /usr/share/dict/words | cut -d$' ' -f $a
