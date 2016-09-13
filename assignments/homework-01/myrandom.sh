#!/bin/bash
#Prints a random word

echo "Random Word: "
cat /dev/stdin | cut -d' ' -f $RANDOM
cat /usr/share/dict/words
