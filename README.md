| application                    | Description                 |
| ------------------------------ | --------------------------- |
| Brewfile                       | Brew 설치 목록                |
| [nvim](./nvim/README.md)       | neovim 설정                  |
| [git](./git/README.md).        | git 설정                     |
| [tmux](./tmux/README.md).      | tmux 설정                    |

## OS공통

- eza - https://denisrasulev.medium.com/eza-the-best-ls-command-replacement-9621252323e

### zsh

WIP

### neovim

> [!NOTE]  
> neovim의 플러그인 추가 수정 커스텀하지 않는다.
> main text editor는 IntelliJ 또는 vscode를 사용할 것이기 때문에 해키하게 커스텀하지 않는다.

neovim이 apt-get install로 설치하면 6.0 버전까지만 설치된다.
9.0 버전을 다운로드 받기위해서

```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```

- 추천
  - [NvChad](https://github.com/NvChad/NvChad)

## macOS

> [!NOTE]  
> 개발은 모두 remote로 하기 떄문에 macOS의 터미널 설정을 간소화한다.
> 애플리케이션 위주로!
> 필요하다면 ssh 관련 유틸리티만 추가하기

Brewfile을 사용해 homebrew로 필수 프로그램 설치

## Ubuntu
