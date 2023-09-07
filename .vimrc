set nocompatible

""" Plugins
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'tribela/vim-transparent'

call plug#end()

""" Appearance
let g:startify_custom_header = []
let g:startify_lists = [
	  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ ]
let g:startify_bookmarks = [{'v': '~/.vimrc'}, {'s': '~/prob_sol'}, {'T': '~/TeX'}]
let g:tokyonight_style = 'night' " available: night, storm
let g:airline_theme = "tokyonight"

""" Basic Configuration
colo tokyonight

let &t_SI="\e[5 q"
let &t_SR="\e[4 q"
let &t_EI="\e[0 q"

set autochdir
set autoindent
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
nnoremap ya :!xclip -sel c < %<CR>

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wall -Wextra -Wconversion -Wshadow -fsanitize=undefined -fsanitize=address <CR>
autocmd filetype cpp nnoremap <F10> :!./%:r <CR>

autocmd filetype tex nnoremap <F9> :w <bar> !pdflatex % <CR>
autocmd filetype tex nnoremap <F10> :!okular %:r.pdf <CR> 
" autocmd filetype tex nnoremap <F9>> :w <bar> !xelatex % <CR>
" autocmd filetype tex nnoremap <F10> :!evince %:r.pdf <CR>

""" Encoding
set termencoding=utf-8
set encoding=utf-8
