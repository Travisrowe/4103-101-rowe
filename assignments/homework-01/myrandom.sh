#!/bin/bash
#Prints a random word

echo "Random Word: "
cat /usr/dict/words | cut -d' ' -f $RANDOM
