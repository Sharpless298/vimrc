set nocompatible

""" Plugins
call plug#begin('~/.vim/plugged')

" Plug 'crusoexia/vim-monokai'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Plug 'lervag/vimtex'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mhinz/vim-startify'
Plug 'tribela/vim-transparent'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
" Plug 'bfrg/vim-cpp-modern'
Plug 'sheerun/vim-polyglot'
Plug 'rlue/vim-barbaric'
Plug 'preservim/vim-markdown'
call plug#end()

""" Basic Configuration
colorscheme tokyonight

let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_SI="\e[6 q"
let &t_SR="\e[4 q"
let &t_EI="\e[2 q"

set autochdir
set autoindent
set belloff=all
set clipboard^=unnamed,unnamedplus
set incsearch
set laststatus=2
set numberwidth=4
set relativenumber
set scrolloff=5
set shiftwidth=4
set showcmd
set tabstop=4
set termguicolors
" set timeoutlen=64
set ttimeoutlen=0

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

syntax enable

""" Plugin configuration
let g:startify_custom_header = []
let g:startify_files_number = 8
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = ['~/.vimrc', '~/.config/hypr/', '~/CP', '~/TeX']
let g:tokyonight_style = 'night' " available: night, storm
let g:airline_theme = "tokyonight"
let g:vimtex_view_method = 'zathura'
" let g:livepreview_previewer = 'zathura'
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

""" Keymaps
" inoremap jk <Esc>
nnoremap !pm :!pulsemixer<CR>

nnoremap ya :w <bar> !wl-copy < % <CR>
" nnoremap ya :w <bar> !xclip -sel c < % <CR>

nnoremap ntt :NERDTreeToggle<CR>

" nnoremap <C-n> :tabnew<CR>:Startify <CR>

autocmd filetype c nnoremap <F9> :w <bar> !gcc % -o %:r -lm -Wall -Wextra -Wconversion -Wshadow <CR>
autocmd filetype c nnoremap <F10> :!./%:r <CR>

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++23 % -Wall -Wextra -Wconversion -Wshadow -fsanitize=address,undefined<CR>
autocmd filetype cpp nnoremap <F10> :!./a.out <CR>


" autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++23 % -o %:r -Wall -Wextra -Wconversion -Wshadow -fsanitize=address,undefined<CR>
" autocmd filetype cpp nnoremap <F10> :!./%:r <CR>

autocmd filetype cpp command! Default execute "%d|r ~/CP/templates/default.cpp|1d|41"
command! TEMP execute "tabnew ~/CP/temp.cpp"
command! TEMP2 execute "tabnew ~/CP/temp2.cpp"

autocmd filetype python nnoremap <F9> :w <bar> !python3 % <CR>

autocmd filetype tex nnoremap <F9> :w <bar> !pdflatex % <CR>
" autocmd filetype tex nnoremap <F9> :w <bar> !xelatex % <CR>
autocmd filetype tex nnoremap <F10> :!zathura %:r.pdf & <CR><CR>

" autocmd filetype tex nnoremap <F11> :!latexmk -pvc -pdf % & <CR>
" autocmd filetype tex nmap <F10> \ll
