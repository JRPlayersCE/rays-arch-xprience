#!/usr/bin/bash

echo 'Ricing, wait...'

cp -f .rice/.bashrc ~/
cp -rf .rice/.config/* ~/.config/

rmdir --ignore-fail-on-non-empty ~/.config/hypr/wallpapers
cp -rf .rice/.config/hypr/wallpapers ~/.config/hypr

cp -rf .rice/.local/* ~/.local/
cp -rfu .rice/.icons/* ~/.icons/

echo 'Rice updated!'