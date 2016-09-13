#!/bin/bash
# Copies a file with the current date added to the end
# of the file name

DATE=$(date +_%Y-%m-%d)
echo $DATE

cp $1 $PWD/"$1$DATE"
