if empty(glob('~\vimfiles\autoload\plug.vim'))
silent ! powershell -Command "
\ New-Item -Path ~\vimfiles -Name autoload -Type Directory -Force;
\ Invoke-WebRequest
\ -Uri 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
\ -OutFile ~\vimfiles\autoload\plug.vim
\ "
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

""" Plugins
call plug#begin('~/vimfiles/plugged')

" Plug 'crusoexia/vim-monokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'yuttie/comfortable-motion.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

""" GUI settings
if has('gui_running')
    au GUIEnter * simalt ~x " maximize window
    set guioptions-=m | set guioptions-=e | set guioptions-=T
    " menu | tab page | toolbar
    set guioptions-=L | set guioptions-=R | set guioptions-=l | set guioptions-=r
    " left scrollbar | right scrollbar | left scrollbar (split) | right scrollbar (split)
    set guifont=Consolas:h13 " for Windows
endif

""" Basic configurations
colorscheme tokyonight

language en_US.UTF-8

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
set scrolloff=5
set shiftwidth=4
set showcmd
set tabstop=4
set ttimeoutlen=0

set encoding=utf8
set fileencoding=utf8

syntax enable

""" Plugin configurations
let g:tokyonight_style = 'night' " available: night, storm
let g:startify_custom_header = ['    2400']
let g:startify_files_number = 5
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
 	  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]
let g:startify_bookmarks = ['~/_vimrc', '~/CP']
let g:airline_theme = "tokyonight"

""" Keymaps
nnoremap ya :%y<CR>

nnoremap ntt :NERDTreeToggle<CR>

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

autocmd filetype tex nnoremap <F9> :w <bar> !pdflatex %<CR>
autocmd filetype tex nnoremap <F10> :!%:r.pdf<CR>
