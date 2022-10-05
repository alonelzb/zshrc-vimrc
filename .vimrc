set nocompatible
filetype on
filetype plugin on
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set cursorline
set cursorcolumn
set hlsearch

set ruler
set showcmd
set showmode
set magic
set smartindent
set encoding=utf-8
set incsearch
set ignorecase
set wildmenu
set colorcolumn=100
syntax enable
syntax on

let mapleader=";"
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
map <leader>sa ggVG

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set relativenumber
set mouse=a
set autoread
set nobackup
set noswapfile
set scrolloff=5
set autowrite

set showcmd
set showmatch

let g:airline_theme='base16_spacemacs'

set guioptions=
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
"Plug 'davidhalter/jedi-vim'
"Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
call plug#end()

"colorscheme dracula
"colorscheme monokai
"colorscheme molokai
colorscheme onedark
"colorscheme solarized
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '-'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeCaseSensitiveSort = 1
let NERDTreeNaturalSort = 1
let NERDTreeWinPos = 'right'
let NERDTreeWinSize = 25
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

let g:indentLine_char='┆'
let g:indentLine_enabled = 1
function HeaderPython()
call setline(1, "#!/usr/bin/env python")
call append(1, "# -*- coding: utf-8 -*-")
call append(2, "# author: luozaibo")
call append(3, "# date : " . strftime('%Y-%m-%d %T', localtime()))
"call append(4, "import requests")
"call append(5, "from lxml import etree")
normal G
normal o
normal o
endf
autocmd bufnewfile *.py call HeaderPython()
let g:indentLine_noConcealCursor=""
autocmd BufReadPost * normal! g`"
