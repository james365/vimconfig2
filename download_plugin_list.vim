
set nocompatible " be iMproved, required
filetype off " required

let cwd = getcwd()
exec 'set rtp+=' . fnameescape ( cwd . '/.vim_config/bundle/Vundle.vim/' )
call vundle#rc(cwd.'/.vim_config/bundle/')
Plugin 'gmarik/Vundle.vim'

exec 'source ' . fnameescape ( cwd . '/vimrcs/plugin_list.vim' )

filetype plugin indent on " required

