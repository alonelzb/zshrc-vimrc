vim9script
# coc.nvim
# 选择补全
#inoremap <silent><expr> <TAB> coc#refresh()
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm()
\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
# coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
vmap <leader>f  <Plug>(coc-format-selected)
#nnoremap <leader>f  <Plug>(coc-format-selected)
# coc-explorer nmap <silent><Leader>e <Cmd>CocCommand explorer<CR>
# coc-snippets #imap <C-l> <Plug>(coc-snippets-expand)

# indentLine
# json文件引号
g:vim_json_syntax_conceal = 0
g:indentLine_enabled = 1
g:indentLine_color_term = 239
g:indentLine_bgcolor_term = 202
g:indentLine_setColors = 0
#g:indentLine_char = '|'
g:indentLine_char_list = ['¦', '|', '┆', '┊']
