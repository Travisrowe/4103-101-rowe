#!/bin/bash
#Prints a random word

echo "Random Word: "
cat testWords.txt | cut -d' ' -f 2,3
