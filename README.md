| application                    | Description                 |
| ------------------------------ | --------------------------- |
| Brewfile                       | Brew 설치 목록                |
| [nvim](./nvim/README.md)       | neovim 설정                  |
| [git](./git/README.md).        | git 설정                     |
| [tmux](./tmux/README.md).      | tmux 설정                    |

## Feature

- [ ] `.zshrc`설정 파일을 따로 빼서 include 할수있도록하기
- [ ] `neovim` 설정하기

## neovim

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

[NvChad](https://github.com/NvChad/NvChad) 설치

```
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
```

```
apt-get install ripgrep
```
