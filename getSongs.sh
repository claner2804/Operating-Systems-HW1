#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: use the script with a parameter. Check the error log for details."
	echo "Error invalid input. Input parameter of type string missing!" >> errorLog.txt
	exit
fi

lines=$(grep -c -i "$1" songs.txt)

if [ $lines -gt 0 ]; then
	echo "$lines hits for '$1' found."
	grep -i "$1" songs.txt
else
	echo "Error: No hits found. Check error log for details."
	echo "No entries for '$1' found. Update the database and try again." >> errorLog.txt
fi
