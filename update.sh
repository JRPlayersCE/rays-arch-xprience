#!/usr/bin/bash

RICE_FOLDER = ".rice/"

echo 'Ricing, wait...'

cp -f .rice/.bashrc ~/
cp -rf .rice/.config/* ~/.config/
cp -rf .rice/.local/* ~/.local/
cp -rf .rice/.icons/* ~/.icons/

echo 'Rice updated!'