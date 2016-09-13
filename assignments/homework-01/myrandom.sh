#!/bin/bash
#Prints a random word

echo "Random Word: "
cat words.txt | cut -d$'\n' -f $Random
