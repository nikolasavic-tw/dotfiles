" General "
"""""""""""
set history=250

" Remap leader to ,
let mapleader = ","

" We're running Vim, not Vi!
set nocompatible

" Enable filetype detection
filetype on

" Enable filetype-specific indenting
filetype indent on

" Enable filetype-specific plugins
filetype plugin on

" Syntax highlighting
syntax on

" Always show current position
set ruler

" Auto indent
set ai

" Show line numbering
set number

" Add jk to map to ESC
inoremap jk <ESC>

" Display "
"""""""""""
" Show trailing whitepace and spaces before a tab:
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Plug Ins "
""""""""""""
" Pathogen
execute pathogen#infect()

" NERDTree
" Open nerdtree when vim starts and no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

" Open nerdtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Close nerdtree if the only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ruby "
""""""""
