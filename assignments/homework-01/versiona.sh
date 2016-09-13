#!/bin/bash
# Copies a file with the current date added to the beginning
# of the file name

DATE=$(date +%Y-%m-%d) #Changes format of $DATE

cp $1 $PWD/$DATE'_'$1 #Copies the file ($1) to the current directory
                      #with the date added to the beggining of its title
