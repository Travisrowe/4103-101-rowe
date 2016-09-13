#!/bin/bash
# Copies a file with the current date added to the end
# of the file name

./versiona.sh $1

DATE=$(date +%Y-%m-%d) #Same date format as versiona.sh
copiedFile=$DATE'_'$1 #Create String to work with
fileType="${copiedFile%.*}" #Substring of the file type (e.g. .txt)
baseOfFile="basename $1 fileType" #base name of the file

cp $copiedFile $PWD/$baseOfFile'_'$DATE$fileType #replace file that versiona.sh made
                                                 #with file that has date at the end



#cp $1 $PWD/"$1$DATE"
