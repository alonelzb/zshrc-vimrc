vim9script
# 插入模式映射
# inoremap <esc> <nop>
inoremap jk <esc>
inoremap <M-k> <up>
inoremap <M-j> <down>
inoremap <M-h> <left>
inoremap <M-l> <right>
nnoremap dw diw
#inoremap <C-a> <Home>
inoremap <C-s> <Cmd>w<CR>
inoremap <C-a> <Home>
inoremap <C-e> <End>
# 普通模式映射
#nnoremap <Leader>ev :vs $HOME/.vimrc<cr>
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>d dd
nnoremap <Leader>i I
nnoremap <Leader>a A
nnoremap <Leader>l $
nnoremap <Leader>' ciw''<esc>P
nnoremap dl d$
nnoremap yl y$
nnoremap cw ciw
nnoremap dw diw
noremap <C-s> <Cmd>w<CR>
# 窗口切换
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <Leader><Leader> :e $MYVIMRC<CR>

# 操作等待映射
onoremap ' t'
onoremap x i' onoremap b )
# 命令模式
#cnoremap vimrc e $MYVIMRC<CR>

# 缩写
iab js javascript
iab ts typescript
iab ct const
iab cosnt const
