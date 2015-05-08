#!/bin/bash
rm -rf ~/.vim
rm -rf ~/.vim_config

cp -r .vim_config ~/
cp -r vimrcs ~/.vim_config/ 

cat > ~/.vimrc << END
set runtimepath+=~/.vim_config

source ~/.vim_config/vimrcs/vundle_config.vim
source ~/.vim_config/vimrcs/plugins_config.vim
source ~/.vim_config/vimrcs/basic.vim
source ~/.vim_config/vimrcs/extended.vim

try
source ~/.vim_config/vimrcs/my_configs.vim
catch
endtry
END

if [ -d ./plugins_install ]
then
    pushd ./plugins_install
    for name in *.sh
    do
        sh ./$name
    done
    popd
fi



