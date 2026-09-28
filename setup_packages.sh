echo "Installing all pacman packages..."
sudo pacman -S --needed - < ~/.rice/pacman_pkgs.txt

echo "Installing all AUR packages..."
yay -S --needed - < ~/.rice/aur_pkgs.txt

echo "Installing all Flatpak packages..."
xargs flatpak install -y flathub < ~/.rice/flatpaks.txt