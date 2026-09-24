#!/usr/bin/bash

echo 'Ricing, wait...'

cp -f .rice/.bashrc ~/
cp -rf .rice/.config/* ~/.config/
cp -rf .rice/.local/* ~/.local/
cp -rfu .rice/.icons/* ~/.icons/

echo 'Rice updated!'