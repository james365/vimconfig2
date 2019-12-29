"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filename:       my_configs.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => colorscheme setting
""""""""""""""""""""""""""""""

try
    "colorscheme zenburn  
    "colorscheme monokai
    colorscheme molokai 
    "colorscheme solarized 
    "colorscheme vividchalk
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => key map  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" cscope quickfix 
set cscopequickfix=s-,c-,d-,i-,t-,e-
" 使用 buf 打开 quickfix 中条目(默认以tab方式打开)
set switchbuf=useopen

" man 
source $VIMRUNTIME/ftplugin/man.vim
cmap man Man
