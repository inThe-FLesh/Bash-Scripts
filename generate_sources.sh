# simple script to generate a list of sources to use in meson.build for a specified folder

echo -n "Please enter a folder name: "
read folder

echo -n "Please enter the file extension (e.g. cpp): "
read extension

echo "*.${extension}"

find . -type f -name "*.${extension}" | grep $folder | sed "s/.*/'&'/"
