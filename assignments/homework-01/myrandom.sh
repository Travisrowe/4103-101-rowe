#!/bin/bash
#Prints a random word
#http://unixjunkie.blogspot.com/2007/10/generating-random-words.html

n=$(cat /usr/share/dict/words | wc -l)

echo "Random Word: "
cat -n /usr/share/dict/words | grep -w $(jot -r 1 1 $n) | cut -f2
