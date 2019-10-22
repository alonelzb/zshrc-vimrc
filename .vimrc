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
syntax enable
syntax on
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let mapleader=";"
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
map <leader>sa ggVG
vnoremap <leader>y "+y

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set relativenumber
set mouse=a
set autoread
set nobackup
set noswapfile
set scrolloff=5

"map <Left> <Nop>
"map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>
"vnoremap <leader>y "+y
"vnoremap <leader>p "+p
"inoremap kj <Esc>

set autowrite
set clipboard+=unnamed

augroup rescur
autocmd!
autocmd bufreadpost * call setpos(".", getpos("'\""))
augroup end

set showcmd
set showmatch
set listchars=tab:>-,trail:-

if empty($TMUX)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

let g:airline_theme='base16_spacemacs'

set guioptions=
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'Yggdroot/indentLine'
Plug 'kien/ctrlp.vim'
call plug#end()

colorscheme molokai
"colorscheme solarized
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:pymode = 0
" 关闭插件警告
let g:pymode_warnings = 1
let g:pymode_python = 'python3'
" Add paths to `sys.path,Value is list of path's strings.
let g:pymode_paths =['/home/alone/.vim/plugged/python-mode',]
" 去除未用的空格
let g:pymode_trim_whitespaces = 1

" 设置默认的Python选项
let g:pymode_options = 1
" (如果设置为1，则开启以下选项)
setlocal complete+=t
setlocal formatoptions-=t
if v:version > 702 && !&relativenumber
setlocal number
endif
"setlocal nowrap
setlocal textwidth=110
setlocal commentstring=#%s
setlocal define=^\s*\\(def\\\\|class\\)

" 设置最大行宽
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
" Setup pymode |quickfix| window.
"let g:pymode_quickfix_minheight = 3
"let g:pymode_quickfix_maxheight = 6
let g:pymode_preview_height = &previewheight
let g:pymode_preview_position = 'botright'
let g:pymode_motion = 1
let g:pymode_indent = 1
let g:pymode_folding = 0

let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_message = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_lint_checkers = ['pep8', 'pyflakes']
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_virtualenv_path = '/home/alone/.myvirtualenvs/scrapy'
let g:pymode_lint_signs = 1

let g:pymode_rope = 1
let g:pymode_rope_ropefolder='.ropeproject'
let g:pymode_rope_show_doc_bind = '<C-c>d'

let g:pymode_rope_completion = 1
set completeopt=menuone,noinsert
let g:pymode_rope_autoimport = 0
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_run=1
let g:pymode_run_bind = '<leader>r'

let g:pymode_rope_lookup_project = 1
let g:pymode_rope_project_root = ""

let g:pymode_syntax_string_formatting = g:pymode_syntax_all
let g:pymode_syntax_string_format = g:pymode_syntax_all
let g:pymode_syntax_string_templates = g:pymode_syntax_all
let g:pymode_syntax_doctests = g:pymode_syntax_all

let g:pymode_lint_cwindow = 0
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'

let g:pymode_rope_lookup_project = 0

let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Tab>'

"autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '-'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeCaseSensitiveSort = 1
let NERDTreeNaturalSort = 1
let NERDTreeWinPos = 'right'
let NERDTreeWinSize = 25
map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc

let g:indentLine_char='┆'
let g:indentLine_enabled = 1
function HeaderPython()
call setline(1, "#!/usr/bin/env python")
call append(1, "# -*- coding: utf-8 -*-")
call append(2, "# author: luozaibo")
call append(3, "# date : " . strftime('%Y-%m-%d %T', localtime()))
call append(4, "import requests")
call append(5, "from lxml import etree")
normal G
normal o
normal o
endf
autocmd bufnewfile *.py call HeaderPython()
