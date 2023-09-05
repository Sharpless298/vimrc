set nocompatible

set clipboard^=unnamed,unnmaedplus
set shiftwidth=4
set autoindent
set showcmd
set number
set tabstop=4
set ttimeoutlen=0
set encoding=utf-8
set belloff=all

colo monokai

let &t_SI="\e[5 q"
let &t_SR="\e[4 q"
let &t_EI="\e[0 q"

nnoremap <C-y> :!xclip -sel c < %<CR>
cd ~/prob_sol

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wall -Wextra -Wconversion -Wshadow -fsanitize=undefined -fsanitize=address <CR>
autocmd filetype cpp nnoremap <F10> :!%:r <CR>

autocmd filetype tex nnoremap <F9> :w <bar> !pdflatex % <CR>
autocmd filetype tex nnoremap <F10> :!okular %:r.pdf <CR> 
" autocmd filetype tex nnoremap <F9>> :w <bar> !xelatex % <CR>
" autocmd filetype tex nnoremap <F10> :!evince %:r.pdf <CR>
