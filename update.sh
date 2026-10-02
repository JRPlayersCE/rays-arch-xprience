echo "Deleting current rice..."
rm -rf .rice
echo "Creating rice folder..."
mkdir .rice

echo "Cloning repo..."
git clone "https://github.com/JRPlayersCE/my-arch-linux-rice" .rice/