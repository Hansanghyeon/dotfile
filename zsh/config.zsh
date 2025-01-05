# alias
alias dc="docker compose"
alias dps="docker ps"

## alias advance
#alias cat="ccat"
alias ls="exa --long --time-style=long-iso"
# ls관련 유틸리티 사용하지 않은면 아래 주석해제 위는 주석처리
# alias ls="ls --time-style=long-iso --color=auto --group-directories-first"

# require
source "$(dirname $0)/zoxide.zsh"

# zinit
zinit for \
  light-mode romkatv/powerlevel10k \
  light-mode zsh-users/zsh-autosuggestions \
  light-mode zdharma-continuum/fast-syntax-highlighting
