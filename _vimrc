set nocompatible

""" Plugins
call plug#begin('~/vimfiles/plugged')

Plug 'mhinz/vim-startify'
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'yuttie/comfortable-motion.vim'

call plug#end()

""" GUI settings
if has('gui_running')
    au GUIEnter * simalt ~x " maximize window
    set guioptions-=m | set guioptions-=e | set guioptions-=T
    " menu | tab page | toolbar
    set guioptions-=L | set guioptions-=R | set guioptions-=l | set guioptions-=r
    " left scrollbar | right scrollbar | left scrollbar (split) | right scrollbar (split)
    set guifont=Consolas:h16 " for Windows
endif

""" Appearance
let g:startify_custom_header = []
let g:startify_lists = [
		  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ ]
let g:tokyonight_style = 'night' " available: night, storm
let g:airline_theme = "tokyonight"

""" Basic configurations
colo tokyonight

let &t_SI="\e[5 q"
let &t_SR="\e[4 q"
let &t_EI="\e[0 q"

set autochdir
set autoindent
set backspace=indent,eol,start
set belloff=all
set clipboard^=unnamed,unnamedplus
set incsearch
set laststatus=2
set number
set shiftwidth=4
set showcmd
set tabstop=4
set ttimeoutlen=0

syntax on

""" Keymaps
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

" autocmd filetype tex nnoremap <F9> :w <bar> !pdflatex % <CR>
" autocmd filetype tex nnoremap <F10> :!okular %:r.pdf <CR> 

""" Encoding
set encoding=utf8
set fileencoding=utf8
