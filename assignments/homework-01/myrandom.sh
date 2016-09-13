#!/bin/bash
#Prints a random word

echo "Random Word: "
cat /usr/share/dict/words | cut -d' ' -f $RANDOM
