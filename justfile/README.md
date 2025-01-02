## node project

`.zshrc`

```
m() {
    if [ "$1" = "dev" ]; then
        just dev
    elif [ "$1" = "storybook" ]; then
        just storybook
    else
        just cmd "$@"
    fi
}
```
