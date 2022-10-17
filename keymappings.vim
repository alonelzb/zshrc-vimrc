vim9script

# 插入模式映射
# inoremap <esc> <nop>
inoremap jk <esc>
# inoremap k <Up>
# inoremap j <Down>
# inoremap <M-k> <up>
# inoremap <M-j> <Down>
# inoremap <M-h> <Left>
# inoremap <M-l> <Right>
nnoremap dw diw
inoremap <C-s> <Cmd>w<CR>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <silent><C-k> <C-o>d$
inoremap <silent><C-j> <C-o>o
inoremap <C-z> <C-G>u<C-U>
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
nnoremap <silent>J :tabprevious<CR>
nnoremap <silent>K :tabnext<CR>

# 调整窗口大小
# noremap = :wincmd +
# noremap = <C-w>2+
# noremap - <C-w>2-
# noremap , <C-w><lt>
# noremap . <C-w>\>

# 窗口切换
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <Leader><Leader> :e $MYVIMRC<CR>
# buffer切换
noremap <silent><Leader>j :bn<CR>
noremap <silent><Leader>k :bp<CR>
noremap <silent><Leader>1 :b 1<CR>
noremap <silent><Leader>2 :b 2<CR>
noremap <silent><Leader>3 :b 3<CR>
noremap <silent><Leader>4 :b 4<CR>
noremap <silent><Leader>bd :bd<CR>
noremap <silent><Leader>bf :bf<CR>
noremap <silent><Leader>bl :bl<CR>

# 操作等待映射
onoremap ' t'
onoremap x i' onoremap b )
# 命令模式
#cnoremap vimrc e $MYVIMRC<CR>
cnoremap <C-b> <Left>
cnoremap <C-a> <Home>

# 终端模式映射
tnoremap <C-q> <C-\><C-n>
# 缩写
iab js javascriptl
iab ts typescript
iab ct const
iab cosnt const

