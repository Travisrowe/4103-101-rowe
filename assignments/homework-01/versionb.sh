#!/bin/bash
# Copies a file with the current date added to the end
# of the file name

./versiona.sh $1

DATE=$(date +%Y-%m-%d) #Same date format as versiona.sh
echo $DATE
copiedFile=$DATE'_'$1 #Create String to work with
echo "copiedFile: $copiedFile"
fileType="${copiedFile##*.}" #Substring of the file type (e.g. .txt)
echo "fileType: $fileType"
baseOfFile="basename $1 .$fileType" #base name of the file
echo "baseOfFile: $baseOfFile"

cp $copiedFile $PWD/$baseOfFile'_'$DATE$fileType #replace file that versiona.sh made
                                                 #with file that has date at the end

#cp $1 $PWD/$DATE'_'$1
