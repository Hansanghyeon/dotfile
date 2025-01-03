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
