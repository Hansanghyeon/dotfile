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

```
run *args:
    {{MANAGER}} {{args}}

cmd +args='':
    #!/usr/bin/env bash

    # args를 배열로 파싱
    # 공백 기준으로 잘라 ARGS라는 배열에 담음
    read -ra ARGS <<< "{{args}}"

    # 첫 번째 인자를 subcmd로
    subcmd="${ARGS[0]}"

    # 첫 번째 인자를 제거한 나머지를 ARGS로 다시 할당
    ARGS=("${ARGS[@]:1}")

    case "$subcmd" in
      example)
        just example
        ;;
      *)
        # (첫 인자 + 나머지 인자들)을 전부 just run으로 전달
        just run "$subcmd" "${ARGS[@]}"
        ;;
    esac
```

이제 미리 정의된 커맨드로 사용하고싶다면 `cmd`에서 케이스를 분기해주면된다.

</details>

