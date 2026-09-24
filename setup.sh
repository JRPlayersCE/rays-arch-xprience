echo 'Ricing, wait...'

cp -f .rice/.bashrc ~/
cp -rf .rice/.config/* ~/.config/

rm -rf ~/.config/hypr/wallpapers
cp -rf .rice/.config/hypr/wallpapers ~/.config/hypr

cp -rf .rice/.local/* ~/.local/
cp -rfu .rice/.icons/* ~/.icons/

echo 'The Rice is done!'