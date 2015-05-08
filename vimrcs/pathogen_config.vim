"""""""""""""""""""""""""""""""""""""""""""""""""
" filename pathogen_config.vim 
" description: pathogen 插件管理器配置文件
"""""""""""""""""""""""""""""""""""""""""""""""""
" 加载指定目录下的插件
call pathogen#infect('~/.vim_config/bundle/{}')
" 生成帮助文档
call pathogen#helptags()

