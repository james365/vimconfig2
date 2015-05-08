"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filename: plugins_config.vim 
" description: 
"   plugins' settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar  
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin = '/usr/bin/ctags'

let g:tagbar_left = 0

let g:tagbar_width = 30

let g:tagbar_autofocus = 0

nnoremap <silent> <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" vim mark 高亮各种 tags 标记，便于观看调试
" 命令简介：
"   mm mark 或者 unmark 光标下的 tag
"   mr 输入正则表达式用于搜索 
"   mn 删除标记 
"   <leader>* 当前MarkWord的下一个
"   <leader># 当前MarkWord的上一个
"   <leader>/ 有MarkWord的下一个
"   <leader>? 所有MarkWord的上一个
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI  = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP 模糊匹配文件，快速打开应用
" 命令： Ctrl +　p
""""""""""""""""""""""""""""""""""""""""""""""""""
" 忽略文件 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

""""""""""""""""""""""""""""""""""""""""""""""""""
" vim markdown :Markdown file syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""""""""""""""""""""""""""""""""""""""""""""""""""
" syntastic 语法检查 
""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_check_on_open=1                                  
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"whether to show balloons
let g:syntastic_enable_balloons = 1
let g:syntastic_ignore_files=[".*\.py$"]

""""""""""""""""""""""""""""""""""""""""""""""""""
" easy grep
" 命令：
" <leader>vv 搜索当前光标下词组
" :Grep [arg] 
" :Replace [target] [replacement]
" :ReplaceUndo 撤销替换
" :GrepOptions [arg] 设置参数
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyGrepCommand=1
let g:EasyGrepFilesToExclude=".svn,.git,tags,cscope.*,*.o,*.so,*.bak,*~"
let g:EasyGrepRecursive=1
let g:EasyGrepJumpToMatch=0 

""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD commenter 
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" molokai colorscheme config
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:molokai_original = 0

""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlighting for arm assembler
""""""""""""""""""""""""""""""""""""""""""""""""""
let asmsyntax='armasm'
let filetype_inc='armasm'



