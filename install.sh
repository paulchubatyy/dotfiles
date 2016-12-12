#!/usr/bin/env bash

set +x

INSTALLDIR=$HOME

link ./.bash_aliases $INSTALLDIR/.bash_aliases
link ./.bash_profile $INSTALLDIR/.bash_profile
link ./.bashrc       $INSTALLDIR/.bashrc
link ./.gitconfig    $INSTALLDIR/.gitconfig
link ./.gitignore    $INSTALLDIR/.gitignore
echo 'Done'
