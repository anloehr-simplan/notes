#! /bin/bash

# delete existing softlinks
find . -type l -delete

echo $(date)

ln -s /mnt/c/Users/andreas.loehr/Documents/notes/*.org .


up_files = $(git ls-files --modified)
echo ${up_files}

git add "*.org"

git add "*.sh"
git commit -m "$(date) updating softlinks."
git push
echo "Completed softlink update."
