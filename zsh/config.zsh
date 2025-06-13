######################## oh-my-zsh

# CURSOR 환경에 따라 테마 설정
if [[ -n $CURSOR_TRACE_ID ]]; then
  ZSH_THEME="robbyrussell"  # Cursor에서는 심플한 테마
else
  ZSH_THEME="powerlevel10k/powerlevel10k"  # 일반 shell에서는 powerlevel10k
fi

######################## alias

# git
alias gfd="branch_name=\$(git symbolic-ref --short HEAD) && git checkout dev && git branch -D \$branch_name && git pull origin dev"
alias gcm="git commit --no-verify -m"
gfm_cmd() {
  local target_branch=${1:-main}
  local branch_name=$(git symbolic-ref --short HEAD)
  git checkout $target_branch
  git branch -D $branch_name
  git pull origin $target_branch
  echo "🔄 $branch_name 브랜치를 삭제하고 $target_branch 브랜치를 업데이트했습니다."
}
alias gfm="gfm_cmd"

# docker
alias dc="docker compose"
alias dps="docker ps"
alias ds="docker service"

# k8s
alias k="kubectl"

# utils
# alias cat="ccat"
# alias ls="exa --long --time-style=long-iso"

# 기타 앱
alias htpasswd="docker run --rm httpd:2.4 htpasswd -nbB"

######################## software

# autojump 대안
source "$(dirname $0)/zoxide.zsh"

# zinit
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zi snippet OMZP::git

zinit ice depth=1
zinit light romkatv/powerlevel10k

# powerlevel10k 설정은 Cursor 환경이 아닐 때만
if [[ ! -n $CURSOR_TRACE_ID ]]; then
  [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi
