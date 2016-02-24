#!/bin/sh

sudo apt-get install build-essential cmake python-dev -y 

if [ -d ~/.vim_config/bundle/YouCompleteMe ]
then
    cd ~/.vim_config/bundle/YouCompleteMe
    ./install.py --clang-completer
    if [ x"$?" != x"0" ]
    then
        echo "Failed to install YouCompleteMe ..."
    else
        echo "Succesful to install YouCompleteMe."
    fi
fi
exit 0
