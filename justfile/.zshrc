# justfile을 효율적으로 사용하기 위한 zsh config
# 참고 - https://github.com/Hansanghyeon/dotfile/tree/main/justfile
if alias m &>/dev/null; then
    unalias m
fi
m() {
    if [ "$1" = "load" ]; then
        just load
    else
        just _cmd "$@"
    fi
}
