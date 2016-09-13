#!/bin/bash
#Prints a random word

echo "Random Word: "
cat testWords.txt | cut -d'\n' -f 2
