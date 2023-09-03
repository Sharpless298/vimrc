set bs=2
set guifont=Consolas:h16
syntax on
set nu belloff=all
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
set ts=4
set cb=unnamed
set ai
cd $HOME\Documents
if has('gui_running')
    au GUIEnter * simalt ~x " maximize window
    set guioptions-=m | set guioptions-=e | set guioptions-=T
    " menu | tab page | toolbar
    set guioptions-=L | set guioptions-=R | set guioptions-=l | set guioptions-=r
    " left scrollbar | right scrollbar | left scrollbar (split) | right scrollbar (split)
    set guifont=Consolas:h16 " for Windows
endif
colo monokai
