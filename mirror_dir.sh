#! /bin/bash

# delete existing softlinks
find . -type l -delete

echo $(date)

ln -s /mnt/c/Users/andreas.loehr/Documents/notes/*.org .


up_files = $(git ls-files --modified)
mod_files = $(git ls-files --others)
echo "$upfiles $mod_files"

git add "*.org"
git add "*.sh"
git commit -m "$(date) updating softlinks of $up_files and $mod_files."
git pusho
echo "Completed softlink update."
