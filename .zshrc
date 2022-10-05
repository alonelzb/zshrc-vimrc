# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/zbluo/.oh-my-zsh"
ZSH_THEME="ys"
#ZSH_THEME="random"
#ZSH_THEME="robbyrussell"
plugins=(
    git
    vscode
    #z
    web-search  # search in ternimal
    autojump  #jo dir: open folder
    autopep8
    sudo   # double tap ESC to add sudo
    cp
    themes
    jsontools
    history
    colorize
    extract  # (shortcut x) instead of tar gz  zip
    rand-quote
    zsh-autosuggestions
    zsh-syntax-highlighting
    sublime
    #systemd
    #tmux
)
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# For a full list of active aliases, run `alias`.
alias lt='ls -t'
alias cp='cp -i'
alias -s py='vim'
alias -s json='vim'
alias -s yaml='vim'
alias vi='vim'
alias python='python3'
alias pip='pip3'
#alias goland='nohup /opt/GoLand-2019.2.3/bin/goland.sh &'
#alias webstorm='nohup /opt/WebStorm-192.6817.13/bin/webstorm.sh &'
#alias clion='nohup /opt/clion-2019.2.4/bin/clion.sh &'
#alias clash-premium='/home/zbluo/Documents/myclash/clash-premium -d /home/zbluo/Documents/myclash'
usi="'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36'"
alias us='echo $usi'
alias socks='echo socks5://127.0.0.1:7890'
#alias pip='/usr/local/bin/pip3.9'
#alias python='/usr/local/bin/python3.9'
#alias proxy='export https_proxy=https://127.0.0.1:7890 && export http_proxy=http://127.0.0.1:7890'
#alias proxy='source /Users/zbluo/Documents/goproject/proxy.sh'
alias unproxy='unset all_proxy'
alias zshrc='vi ~/.zshrc'
alias vimrc='vi ~/.vimrc'
#alias f='python ~/Documents/spiders/.youdao/yd_translate.py'
#clash_path='/Users/zbluo/Downloads/clash-premium/'
#alias v2ray='nohup /Users/zbluo/Library/v2ray-macos-64/v2ray &'
#alias clash="nohup ${clash_path}clash-darwin-amd64-2020.12.27 -d $clash_path > /dev/null &"
#alias httpb='http -b'
#alias v2ray='~/.config/v2ray/v2ray'
# history display time
HIST_STAMPS="yyyy-mm-dd"


#export PATH="$PATH:/home/zbluo/.local/bin"
bindkey ';' autosuggest-accept
eval $(thefuck --alias)
#export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
#export PATH="$PATH:/Users/zbluo/Downloads/Visual Studio Code.app/Contents/Resources/app/bin"
#export PATH=$PATH:/usr/local/go/bin
export LC_ALL=en_US.UTF8

######################################################

#bat ccat instead of cat
######################################################
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh
#export PATH=$PATH:/usr/local/mongodb/bin
#export all_proxy=socks5://127.0.0.1:1080
source $HOME/.proxy.sh
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/nginx/sbin"
export PATH="$PATH:/home/zbluo/.local/bin"

#export PATH="/usr/local/nginx/sbin:$PATH"
