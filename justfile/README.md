# justfile

> 2025-01-03 @Hansanghyeon

## 컨셉

어떤 프로젝트이던 `pnpm` `yarn` `npm` `elixir` `go` `python` 어떤 환경이던 동일한 커맨드를 사용하기위하여.

`m <command>`

<details>
<summary><code>.zshrc</code> 히스토리</summary>

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

just에서 쉘 스크립트 블록을 이용해 해당 분기를 구현할 수 있다.

`.justfile_` 파일로 추가

`_cmd`는 list에 노출되지 않는다.

```
set positional-arguments

_run *args:
  {{MANAGER}} {{args}}

_cmd +args='':
  #!/usr/bin/env bash
  # 1) 원하는 커맨드를 공백으로 구분해 저장
  USER_COMMAND="$(just --summary)"
  # 2) USER_COMMAND를 case에 맞는 패턴으로 변환
  PATTERN=$(echo "$USER_COMMAND" | sed 's/ /|/g')

  case "$1" in
    ls)
      just --list --list-prefix '' --list-heading '' --unsorted
      ;;
    $PATTERN)
      just "$1"
      ;;
    *)
      just _run {{args}}
      ;;
  esac
```

</details>

## 사용법

`.justfile`

```
############ 재사용 코드블럭
import? '.justfile_'

load:
  curl https://raw.githubusercontent.com/Hansanghyeon/dotfile/justfile/justfile > .justfile_

MANAGER := "pnpm"
############
```

`.zshrc`

```
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
```

<details>
<summary><code>.zshrc</code></summary>

```
/root/.zshrc:60: defining function based on alias `m'
/root/.zshrc:60: parse error near `()'
```

해당 이유로 `unalias m`을 추가해줬다 하지만

```
/root/.zshrc:unalias:60: no such hash table element: m
```

해당오류가나서

```
if alias m &>/dev/null; then
    unalias m
fi
```

해당 방법으로 해결하였다.

</details>
