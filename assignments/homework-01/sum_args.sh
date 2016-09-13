#!/bin/bash
# demonstrate variable scope 1.
myvar=$( ls /etc | wc -l )
echo There are $myvar entries in the directory /etc
