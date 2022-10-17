vim9script

filetype plugin indent on
syntax enable
syntax on
#  键入 <Tab> 时使用空格
set expandtab
# 自动缩进宽度
set shiftwidth=4
set softtabstop=4
#  默认8
set tabstop=4
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
set ignorecase    # 搜索忽略大小写
set wildmenu
# set colorcolumn=100
set ttimeout
set ttimeoutlen=100
# 显示TAB键
set list
set listchars=tab:>-,trail:-


set mouse=a
set autoread
# 切换文件自动保存
set autowrite
# 备份文件
set nobackup
set nowritebackup
set noswapfile
# 光标上下两侧最少保留的屏幕行数
set scrolloff=2
# 换行
set nowrap
# 长行向右10个字符
set sidescroll=10
# 行首可退到上一 行，行尾可到下一行
# set whichwrap=h,l
set showcmd
set showmatch
# 底部空行
set cmdheight=1
set updatetime=100
# 文件未保存也可以切换buffer
set hidden
set signcolumn=yes
set shortmess+=c

# 系统剪贴板和vim剪贴板公用
set clipboard+=unnamed
# backspace可以退回上一行
set backspace=indent,eol,start
# 按照缩进折叠 默认manual
# set foldmethod=indent
g:mapleader = ";"
