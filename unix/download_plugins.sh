#!/bin/bash

export ORIGINAL_PATH=`pwd`

echo "Check and install Vundle."

# if we don't have folder vimfiles, create it.
if [ ! -d "./.vim_config/" ]; then
    mkdir ./.vim_config/
fi
cd ./.vim_config/

# if we don't have bundle, create it.
if [ ! -d "./bundle/" ]; then
    mkdir ./bundle/
fi
cd ./bundle/

# download or update vundle in ./vimfiles/bundle/
if [ ! -d "./Vundle.vim/" ]; then
    git clone https://github.com/gmarik/Vundle.vim Vundle.vim
fi

# download and install bundles through Vundle in this repository
echo "Update vim-plugins."
cd ${ORIGINAL_PATH}
vim -u download_plugin_list.vim --cmd "set rtp=./.vim_config,\$VIMRUNTIME,./.vim_config/after" +PluginUpdate +qall

# go back
cd ${ORIGINAL_PATH}

#
echo "Download vim plugins Success."
echo "You can also run 'sh unix/install.sh' to install vim plugins. "
