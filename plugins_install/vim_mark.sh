#!/bin/bash
#filename: vim_mark.sh
#description: 解决 Vim mark 插件 键盘映射冲突文件 

if [ -f ~/.vim_config/bundle/vim-mark/plugin/mark.vim ]
then
    sed -i "s/<Leader>m <Plug>MarkSet/mm <Plug>MarkSet/g" ~/.vim_config/bundle/vim-mark/plugin/mark.vim                             
    sed -i "s/<Leader>r <Plug>MarkRegex/mr <Plug>MarkRegex/g" ~/.vim_config/bundle/vim-mark/plugin/mark.vim
    sed -i "s/<Leader>n <Plug>MarkClear/mn <Plug>MarkClear/g" ~/.vim_config/bundle/vim-mark/plugin/mark.vim
fi

exit 0

