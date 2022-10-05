vim9script

filetype plugin indent on
syntax enable
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set relativenumber
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
set ttimeout
set ttimeoutlen=100
# set list
    
g:mapleader = ";"

set mouse=a
set autoread
# 切换文件自动保存
set autowrite
# 备份文件
set nobackup
set nowritebackup
set noswapfile
set scrolloff=4

set showcmd
set showmatch
# 底部空行
set cmdheight=1
set updatetime=100
set hidden
set signcolumn=yes
set shortmess+=c

# 系统剪贴板和vim剪贴板公用
set clipboard+=unnamed
set guioptions-=T
# backspace可以退回上一行
set backspace=indent,eol,start
