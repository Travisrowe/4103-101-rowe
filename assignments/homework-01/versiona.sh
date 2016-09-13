#!/bin/bash
# Copies a file with the current date added to the beginning
# of the file name

DATE=$(date +%Y-%m-%d)
echo $DATE

cp $1 $PWD/"$DATE+$1"
ls -l
