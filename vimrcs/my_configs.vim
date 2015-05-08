"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filename:       my_configs.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => colorscheme setting
""""""""""""""""""""""""""""""

try
    "colorscheme zenburn  
    colorscheme molokai 
catch
endtry



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => key map  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用超级用户保存 
cmap w!! SudoWrite %

" visual mode下用I, A命令时, 自动转为block visual mode 
vnoremap <expr> I ForceBlockwiseVisual('I')
vnoremap <expr> A ForceBlockwiseVisual('A')
func ForceBlockwiseVisual(key)
  if mode () == 'v'
    return "\<C-v>". a:key
  elseif mode () == 'V'
    return "\<C-v>0o$". a:key
  else | return a:key | endif
endfunc

" clipboard 
nnoremap Y y$
set pastetoggle=<F12>                  " toggle paste insert mode
xnoremap <c-c> "+y
inoremap <c-v> <Esc>:set paste<CR>"+p:set nopaste<CR>i
" insert word of the line above
inoremap <C-Y> <C-C>:let @z = @"<CR>mz
           \:exec 'normal!' (col('.')==1 && col('$')==1 ? 'k' : 'kl')<CR>
           \:exec (col('.')==col('$') - 1 ? 'let @" = @_' : 'normal! yw')<CR>
           \`zp:let @" = @z<CR>a
" delete to blackhole register
nnoremap <Del> "_x
xnoremap <Del> "_d
xnoremap p "_dp

" cursor movement 
if isdirectory($HOME . "/.vim_config/vundle/accelerated-jk") " a variable not assigned
    nmap j <Plug>(accelerated_jk_gj)
    nmap k <Plug>(accelerated_jk_gk)
endif
let g:accelerated_jk_acceleration_limit = 500
let g:accelerated_jk_acceleration_table = [10, 20, 30, 35, 40, 45, 50]

nnoremap n nzzzv
nnoremap N Nzzzv

""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope 设置
" 包括 autoload_cscope.vim 插件  
""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    " 使用quickfix显示搜索结果 
    set cscopequickfix=g-,s-,d-,c-,t-,e-,f-,i-
    
    " 快捷键设置
    " s: Find this C symbol                                                       
    " g: Find this definition
    " d: Find functions called by this function
    " c: Find functions c   alling this function
    " t: Find this text string
    " e: Find this egrep pattern
    " f: Find this file
    " i: Find files #including this file
    map <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
    map <leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
    map <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
    map <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>
    map <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
    map <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
    map <leader>fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    map <leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR> 
endif
