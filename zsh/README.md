# zsh

> 2025-01-06 @Hansanghyeon

## 설치

### 사전설치 (수동으로 해줘야함)

#### zinit 설치

```sh
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

#### zoxide 설치

```sh
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
```

```
Note: /root/.local/bin is not on your $PATH. zoxide will not work unless it is added to $PATH.
```

이런 에러가난다면 `.zshrc`나 `.bashrc`

```
export PATH=$PATH:/root/.local/bin
```

해당 값 추가

#### exa 설치

https://github.com/ogham/exa

```
sudo apt install exa
```

### 자동설치

### 자동 설치

```sh
curl -fsSL https://4t.gg/hyeon-dot-zsh | bash
```

```sh
curl -fsSL https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/zsh/setup.sh | bash
```
