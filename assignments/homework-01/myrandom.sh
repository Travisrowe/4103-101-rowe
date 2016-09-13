#!/bin/bash
#Prints a random word

let a=$RANDOM%10

echo "Random Word: "
cat testWords.txt | cut -d$' ' -f $a
