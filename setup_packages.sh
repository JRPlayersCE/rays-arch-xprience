echo "Installing all pacman packages..."
sudo pacman -S --needed - < pacman_pkgs.txt

echo "Installing all AUR packages..."
yay -S --needed - < aur_pkgs.txt

echo "Installing all Flatpak packages..."
xargs flatpak install -y flathub < flatpaks.txt