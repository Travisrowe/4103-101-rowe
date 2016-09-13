#!/bin/bash
#Prints a random word

#numWords="wc -l /usr/share/dict/words"
#let a=$RANDOM%$numWords+1 #a is a random number between 1 and the number of
                          #words in the dictionary
n=$(cat /usr/share/dict/words | wc -l)
#cat -n /usr/share/dict/words | grep -w $(jot -r 1 1 $n) | cut -f2

echo "Random Word: "
cat -n /usr/share/dict/words | grep -w $(jot -r 1 1 $n) | cut -f2
#cat /usr/share/dict/words | cut -d$' ' -f $a
