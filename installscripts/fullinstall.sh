#!/bin/bash

echo " "
echo "Installing packages"

sudo pacman -S bspwm rofi dunst picom polybar sxhkd lxsession ranger thunar thunar-volman thunar-archive-plugin tumbler nitrogen xclip scrot kitty ttf-jetbrains-mono ttf-jetbrains-mono-nerd --needed

echo " "
echo "Done!"
sleep 0.5

read -r -p "Backup current dotfiles? [Y/n] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo " "
    echo "Backing up current dotfiles"

    mkdir ~/dotfiles.bak
    cp -r ~/.config/. ~/dotfiles.bak/
    echo "Done!"
    sleep 0.5
else
    echo " "
    echo "Skipping backup..."
    sleep 0.5
fi

echo " "
echo "Cloning dotfiles..."
cp -r bspwm picon sxhkd polybar dunst rofi ~/.config/
cp -r scripts ~/scripts

echo "Copying fonts"
mkdir ~/.fonts
cp -r fonts/. ~/.fonts

echo " "
echo "Installation finished! If you are already running bspwm, please log out and log back in"
