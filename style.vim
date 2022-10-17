vim9script

# 配色
# set background=dark
# set t_Co=256
# colorscheme space-vim-dark
# colorscheme gruvbox
# colorscheme onedark
colorscheme dracula
# colorscheme monokai
# colorscheme molokai
#g:molokai_original = 1
#g:rehash256 = 1
# colorscheme solarized
# g:solarized_termtrans = 1

def SetColor()
    hi Normal     ctermbg=None
    hi CursorLine ctermbg=236
    hi CursorColumn ctermbg=235
    hi LineNr     ctermbg=NONE
    hi Comment ctermfg=59 cterm=italic
    hi SignColumn ctermbg=NONE

# 选中项
# hi CocMenuSel ctermbg=39 ctermfg=184
    hi CocMenuSel ctermbg=135 ctermfg=82
# 弹出菜单
    hi Pmenu ctermbg=8
# 可视 模式背景
    hi Visual ctermbg=239
    # echo g:colors_name
    # vim-clap
enddef


SetColor()
autocmd ColorScheme * SetColor()

# vim-clap 弹出层style
def ClapPopBg()
    hi ClapPreview ctermbg=None
    hi ClapDisplay ctermbg=237
    hi ClapDisplay ctermbg=None
    hi ClapCurrentSelection ctermbg=32
    hi ClapPopupCursor ctermfg=170
enddef
augroup YourGroup
  autocmd!
  autocmd User ClapOnEnter ClapPopBg()
  # autocmd User ClapOnExit    call YourFunction()
augroup END
