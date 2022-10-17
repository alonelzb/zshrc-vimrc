vim9script

plug#begin('~/.vim/plugged')
#{{{
Plug 'yianwillis/vimcdoc'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'tyru/caw.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
#Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'
#Plug 'crusoexia/vim-monokai'
Plug 'sickill/vim-monokai'
Plug 'luochen1990/rainbow'
plug#end()
#}}}

# <-----------------------------------  coc.nvim  ------------------------------------------------>
# 选择补全
g:coc_node_path = '/usr/local/nodejs/bin/node'
g:coc_global_extensions = [
    'coc-json', 'coc-git', 'coc-html', 'coc-css',
    'coc-tsserver', 'coc-eslint', 'coc-prettier',
    'coc-explorer', 'coc-emmet', '@yaegassy/coc-volar',
    'coc-snippets', 'coc-vimlsp', 'coc-tabnine'
]
inoremap <expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(0) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(0) : "\<C-p>"
# 错误提示
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
# 补全长度
set pumheight=10
autocmd CursorHold * silent call CocActionAsync('highlight')


# <-----------------------------------  coc-prettier  --------------------------------------------->
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

# coc-snippets


# coc-explorer
# <-----------------------------------  coc-explorer  --------------------------------------------->
nnoremap <silent><Leader>e  <Cmd>CocCommand explorer<CR>

# indentLine
# 显示json文件引号
g:vim_json_conceal = 0
g:indentLine_char_list = ['¦', '|', '┆', '┊']
# g:indentLine_char = '.'

# <-----------------------------------  caw 注释 --------------------------------------------->
# nmap <Leader>c <Plug>(caw:prefix)
# xmap <Leader>c <Plug>(caw:prefix)
# windows 是<C-/>
nmap <C-_> gcc
xmap <C-_> gcc

# <-----------------------------------  vim-clap  ------------------------------------------------>
nnoremap <silent><Leader>vc :Clap<CR>
nnoremap <silent><C-p> :Clap files! ~<CR>
nnoremap <silent><Leader>rf :Clap recent_files<CR>
nnoremap <silent><Leader>ff :Clap files<CR>
nnoremap <silent><Leader>ch :Clap history<CR>
# nnoremap <silent><Leader>cf :Clap files! ~<CR>
g:clap_popup_move_manager = {"\<C-N>": "\<Down>", "\<C-P>": "\<Up>"}
g:clap_current_selection_sign = {
  "text": ">",
  "texthl": "ClapCurrentSelectionSign",
  "linehl": "ClapCurrentSelection"}


# g:clap_theme = { 'search_text': {'guifg': 'red', 'ctermfg': 'cyan'} }
g:clap_background_shadow_blend = 100
g:clap_enable_background_shadow = true
g:clap_enable_icon = 1
g:clap_theme = 'atom_dark'


g:clap_provider_vim_config = {
    'source': ['~/.vimrc', '~/.vim/basic.vim', '~/.vim/keymappings.vim', '~/.vim/plugin-config.vim'],
    'sink': 'e',
    'description': 'Quick open some dotfiles'
}

# rainbow pair
g:rainbow_active = 1


# <-----------------------------------  vim-airline  ---------------------------------------------->
#{{{
# vim-airline ['angr', 'base16_dracula','onedark', 'dracula', 'base16_monokai', 'base16_3024']
g:airline_theme = 'dracula'
g:airline_section_b = '%{getcwd()}'
# g:airline_section_c = '%t'
# g:airline_section_c_only_filename = 1
g:airline#extensions#tabline#enabled = 1    # 一个tab时显示所有buffer
g:airline#extensions#tabline#buffer_nr_show = 1
g:airline#extensions#tabline#formatter = 'unique_tail'
g:airline#extensions#tabline#left_sep = ' '
# g:airline#extensions#tabline#left_alt_sep = ''
g:airline#extensions#tabline#show_splits = 0
#g:airline#extensions#tabline#show_tab_count = 0
g:airline#extensions#tabline#show_close_button = 0
#g:airline#extensions#tabline#fnamemod = ':t'
#g:airline#extensions#tabline#left_alt_sep = '>'
# g:airline_left_sep = "▶"
# g:airline_left_alt_sep = "❯"
# g:airline_right_sep = "◀"
# g:airline_right_alt_sep = "❮"
g:airline_left_sep = ''
g:airline_left_alt_sep = ''
g:airline_right_sep = ''
# g:airline_right_alt_sep = ''
g:airline_right_alt_sep = ''
#}}}
