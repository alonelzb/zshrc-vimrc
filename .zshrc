# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/zbluo/.oh-my-zsh"
#ZSH_THEME="ys"
#ZSH_THEME="random"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions 
    zsh-syntax-highlighting
    vscode
    sublime 
    z
    web-search  # search in ternimal
    autojump
    autopep8
    sudo 
    cp
    themes
    archlinux
    jsontools
    history
    golang
    colorize
    #tmux
)
source $ZSH/oh-my-zsh.sh
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# For a full list of active aliases, run `alias`.
alias lt='ls -t'
alias cp='cp -i'
alias -s py='vim'
alias goland='nohup /opt/GoLand-2019.2.3/bin/goland.sh &'
alias webstorm='nohup /opt/WebStorm-192.6817.13/bin/webstorm.sh &'
alias clion='nohup /opt/clion-2019.2.4/bin/clion.sh &'
usi="'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36'"
alias us='echo $usi'

export PATH="$PATH:/home/zbluo/.local/bin"
bindkey ';' autosuggest-accept
export PATH=$PATH:/usr/local/go/bin
