echo "Deleting current rice..."
rm -rf .rice
mkdir .rice

echo "Creating cache folder..."
cd .cache/
mkdir -p rice

echo "Cloning repo..."
git clone "https://github.com/JRPlayersCE/my-arch-linux-rice" rice/

echo "Copying files..."
cp -rf rice/* ~/.rice/

echo "Deleting cache..."
rm -rf rice/

cd ..
sh .rice/setup.sh