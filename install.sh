#!/usr/bin/env bash

set +x

INSTALLDIR=$HOME

FILES=".bash_aliases .bash_profile .bashrc .gitconfig .gitignore .vimrc bin/flushdns"

for file in $FILES; do
    if [ -f "$INSTALLDIR/$file" ]; then
        echo "Removing $INSTALLDIR/$file"
        rm -f "$INSTALLDIR/$file"
    fi
    echo "Installing $file into $INSTALLDIR/$file"
    link "$file" "$INSTALLDIR/$file"
done
source ~/.bash_profile
echo "Done"
