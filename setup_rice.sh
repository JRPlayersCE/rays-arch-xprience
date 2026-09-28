#!/bin/bash

echo 'Ricing, wait...'

cp -f .rice/.bashrc ~/
cp -rf .rice/.config/* ~/.config/

rm -rf ~/.config/hypr/wallpapers
cp -rf .rice/.config/hypr/wallpapers ~/.config/hypr

cp -rf .rice/.local/* ~/.local/
mkdir -p ~/.icons
sudo cp -rf .rice/.icons/* ~/.icons/

killall -q waybar cava
nohup waybar > /dev/null 2>&1 &

echo 'The Rice is done!'