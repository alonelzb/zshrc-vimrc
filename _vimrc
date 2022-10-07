if !has('vim9script')
endif
vim9script
if has('win32')
source $HOME/vimfiles/base.vim
source $HOME/vimfiles/keymappings.vim
source $HOME/vimfiles/plugin-config.vim
else
source $HOME/.vim/base.vim source
$HOME/.vim/keymappings.vim source
$HOME/.vim/plugin-config.vim
endif
call plug#begin('$HOME/vimfiles/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
#Plug 'SirVer/ultisnips' Plug 'honza/vim-snippets'
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai' Plug 'joshdick/onedark.vim'
#Plug 'crusoexia/vim-monokai'
Plug 'sickill/vim-monokai' Plug 'luochen1990/rainbow'
call plug#end()
set background=dark
colorscheme onedark
#colorscheme dracula
#colorscheme monokai
#colorscheme molokai
#g:molokai_original = 1
#g:rehash256 = 1
# coc.nvim
#g:coc_node_path = '/usr/bin/node'
g:coc_node_path = 'D:\Applications\Scoop\apps\nodejs-lts\16.17.0\node.exe'
g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-html', 'coc-css', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-explorer', 'coc-vimlsp', 'coc-emmet', '@yaegassy/coc-volar'] # , 'coc-snippets']
autocmd BufReadPost * normal! g`"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd CursorHold * silent call CocActionAsync('highlight')
# 插入模式不高亮当前行
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
# if &term =~ 'xterm' || &term == 'win32'
&t_SI = "\e[5 q"
&t_SR = "\e[3 q"
&t_EI = "\e[1 q"
&t_ti ..= "\e[1 q"
&t_te ..= "\e[0 q"
endif
g:rainbow_active = 1
#g:UltiSnipsSnippetsDir = '$HOME/vimfiles/UltiSnips'
#g:UltiSnipsExpandTrigger = "<TAB>"
#g:UltiSnipsJumpForwardTrigger = "<c-b>"
#g:UltiSnipsJumpBackwardTrigger = "<c-z>"
#g:UltiSnipsEditSplit = "vertical"
