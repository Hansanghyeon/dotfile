ZSH=$HOME/.oh-my-zsh

#------------- Antigen
source $HOME/.zshrc.antigen

#------------- alias
alias cat="ccat"

## docker
alias dc="docker compose"
alias dps="docker ps"

## git
alias gfm="branch_name=\$(git symbolic-ref --short HEAD) && git checkout main && git branch -D \$branch_name && git pull origin main"
alias gfd="branch_name=\$(git symbolic-ref --short HEAD) && git checkout dev && git branch -D \$branch_name && git pull origin dev"

## BSD
# https://github.com/ogham/exa
alias ls="exa --long --time-style=long-iso"
# ls관련 유틸리티 사용하지 않은면 아래 주석해제 위는 주석처리
# alias ls="ls --time-style=long-iso --color=auto --group-directories-first"
