#! /bin/bash

echo "Select one of the following wallpapers:"
for wallpaper in `ls -d */ | cut -f1 -d'/'`
do
    echo " - ${wallpaper}"
done

read -p "Type wallpaper name: " selected_wallpaper

echo "Installing wallpaper: ${selected_wallpaper}"
cd $selected_wallpaper
sudo mkdir -p /usr/share/backgrounds/gnome/$selected_wallpaper-timed
sudo cp $selected_wallpaper*.jpeg /usr/share/backgrounds/gnome/$selected_wallpaper-timed
sudo cp $selected_wallpaper-timed.xml /usr/share/backgrounds/gnome
sudo cp $selected_wallpaper.xml /usr/share/gnome-background-properties
echo "Added $selected_wallpaper dynamic wallpaper!"
