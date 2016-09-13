#!/bin/bash
# Copies a file with the current date added to the end
# of the file name

./versiona.sh $1

DATE=$(date +%Y-%m-%d) #Same date format as versiona.sh
copiedFile = $DATE'_'$1 #Create String to work with
echo $copiedFile
fileType = "${copiedFile%.*}" #Substring of the file type (e.g. .txt)
baseOfFile = basename $1 fileType #base name of the file





#cp $1 $PWD/"$1$DATE"
