#! /bin/bash

# delete existing softlinks
find . -type l -delete

echo $(date)

ln /mnt/c/Users/andreas.loehr/Documents/notes/*.org .


up_files="$(git ls-files --modified --exclude-standard)"
mod_files="$(git ls-files --others --exclude-standard)"
echo "$upfiles $mod_files"

git add "*.org"
git add "*.sh"
git add .gitignore
git commit -m "$(date) updating softlinks of $up_files and $mod_files."
git push
echo "Completed softlink update."
