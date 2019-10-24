#! /bin/bash

for i in "$@"
do
		echo "Adding $1 to wallpapers ..."
		cd $i
		sudo mkdir /usr/share/backgrounds/gnome/$1-timed
		cp $i*.jpeg /usr/share/backgrounds/gnome/$1-timed
		cp $i-timed.xml /usr/share/backgrounds/gnome
		cp $i.xml /usr/share/gnome-background-properties
		echo "Added $1 dynamic wallpapers!"
done
