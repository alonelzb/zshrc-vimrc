vim9script

source ~/.vim/basic.vim
source ~/.vim/keymappings.vim
source ~/.vim/plugin-config.vim
source ~/.vim/style.vim

# 打开文件时返回到最后的编辑位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
# autocmd  BufReadPost * normal! g`"
autocmd BufWritePost $MYVIMRC source $MYVIMRC
# 插入模式不高亮当前行
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
autocmd FileType javascript,vue set shiftwidth=2 softtabstop=2
autocmd FileType  Caddyfile set shiftwidth=8 softtabstop=8
autocmd BufEnter * set cursorline cursorcolumn
autocmd BufLeave * set nocursorline nocursorcolumn
# autocmd BufNewFile *.vue 0r ~/.vim/templates/template.vue
augroup javascript_folding
    au!
    # au FileType javascript setlocal foldmethod=indent
    au FileType vim setlocal foldmethod=marker
augroup END

if &term =~ 'xterm' || &term == 'win32'
    &t_SI = "\e[5 q"
    &t_SR = "\e[3 q"
    &t_EI = "\e[1 q"
    &t_ti ..= "\e[1 q"
    &t_te ..= "\e[0 q"
endif

import  ".vim/utils.vim"

command -nargs=0 Term utils.SayHello()
nnoremap <Space><Space>  utils.SayHello()

# utils.SayHello()
# " `:Clap quick_open` to open some dotfiles quickly.
