# simple script to generate a list of sources to use in meson.build for a specified folder

echo -n "Please enter a folder name: "
read folder
find . -type f -name "*.c" | grep $folder | sed "s/.*/'&'/"
