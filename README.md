| application                    | Description                 |
| ------------------------------ | --------------------------- |
| Brewfile                       | Brew 설치 목록                |
| [nvim](./nvim/README.md)       | neovim 설정                  |
| [git](./git/README.md)         | git 설정                     |
| [tmux](./tmux/README.md)       | tmux 설정                    |
| [tmux](./just/README.md)       | just 설정                    |

- **dotfile**은 해당 유저 폴더에 설치하는 것을 권장합니다.
  - 유저폴더에 설치하지 않을때는 `${HOME}/dotfile`을 모두 수정해주세요

## OS공통

### exa

https://github.com/ogham/exa

```
sudo apt install exa
```

### justfile

```
wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
sudo apt update
```

```
apt install just
```

## Proxmox

proxmox를 사용할때는 root유저를 기본으로 사용하도록 되어있어서 `sudo` 패키지가 설치되어있지 않다.

```
apt install sudo
```

## macOS

> [!NOTE]  
> 개발은 모두 remote로 하기 떄문에 macOS의 터미널 설정을 간소화한다.
> 애플리케이션 위주로!
> 필요하다면 ssh 관련 유틸리티만 추가하기

Brewfile을 사용해 homebrew로 필수 프로그램 설치
