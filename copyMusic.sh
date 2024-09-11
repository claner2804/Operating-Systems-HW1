#!/bin/bash

cd music
for band in *; do 
	echo "Band: $band"
	cd "$band"
	for year in *; do
		echo "Year: $year"
		cd "$year"
		for album in *; do
			echo "Album §album"

			mkdir -p ../../../"Music DiBSE/$year/$band"
			cp "$album"/* ../../../"Music DiBSE/$year/$band"
		done
		cd .. 
	done
	cd ..
done
cd ..