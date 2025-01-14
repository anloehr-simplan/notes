#! /bin/bash

# delete existing softlinks
find . -type l -delete

ln -s /mnt/c/Users/andreas.loehr/Documents/notes/*.org .
git add "*.org"
git commit -m "${date} updating softlinks."
git push
echo "Completed softlink update."
