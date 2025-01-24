# just

> 2025-01-03 @Hansanghyeon

## 컨셉

어떤 프로젝트이던 `pnpm` `yarn` `npm` `elixir` `go` `python` 어떤 환경이던 동일한 커맨드를 사용하기위하여.

`m <command>`

## 설치

```
wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
sudo apt update
```

```
apt install just
```

### script 자동 설치

```
curl -fsSL https://4t.gg/hyeon-dot-just | bash
```

```
curl -fsSL https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/just/setup.sh | bash
```

### script 수동 설치

`.justfile`

```
# --- BEGIN   Hansanghyeon/dotfile ---
import? '.justfile_'
MANAGER := "pnpm"
# --- END     Hansanghyeon/dotfile ---
```

`.zshrc`

```
alias m='just m'
```

## 이슈

- [[justfile] justfile 원격으로 사용하기 · Issue #2 · Hansanghyeon/dotfile](https://github.com/Hansanghyeon/dotfile/issues/2)
- [[justfile] \`.zshrc\` 함수를 이용한 방법에서 justfile 커맨드로 이동하기 · Issue #1 · Hansanghyeon/dotfile](https://github.com/Hansanghyeon/dotfile/issues/1)
