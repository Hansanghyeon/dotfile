######################## alias

# git
alias gfm="branch_name=\$(git symbolic-ref --short HEAD) && git checkout main && git branch -D \$branch_name && git pull origin main"
alias gfd="branch_name=\$(git symbolic-ref --short HEAD) && git checkout dev && git branch -D \$branch_name && git pull origin dev"
alias gcm="git commit --no-verify -m"
#docker
alias dc="docker compose"
alias dps="docker ps"

# utils
# alias cat="ccat"
alias ls="exa --long --time-style=long-iso"
# ls관련 유틸리티 사용하지 않은면 아래 주석해제 위는 주석처리
# alias ls="lsd --long --date date"

######################## software
# autojump 대안
source "$(dirname $0)/zoxide.zsh"

# zinit
zi light romkatv/powerlevel10k
zi light-mode zsh-users/zsh-autosuggestions
zi light-mode zdharma-continuum/fast-syntax-highlighting
zi snippet OMZP::git