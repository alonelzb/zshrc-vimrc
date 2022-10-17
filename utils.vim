vim9script

export def SayHello()
    echo 'hello'
    var path = getcwd()
    var opts =  { 'term_name': 'vite', 'vertical': 1, 'term_cols': 45 }
    term_start("pnpm run dev", opts)

    # exe '<C-\><C-n>'
    # exe '<C-w><C-S-l>'
    # exe "lcd" path .. '/.vim/autoload'
    # echo getcwd()
    # exe "terminal ++curwin pnpm run dev"
    # echo path
enddef
