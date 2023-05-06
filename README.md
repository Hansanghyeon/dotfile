## brew로 프로그램 한 방에 설치하기

### 들어가기전

#### brew 설치하기

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

cask, mas, wget 등 개발 패키지

#### brew cask 설치하기

```bash
brew install cask
```

atom, docker 등 웹사이트에서 다운받아 설치하는 어플리케이션

#### brew mas 설치하기

```bash
brew install mas
```

mas는 애플 앱스토어의 어플리케이션을 homebrew에서 설치할 수 있게 해준다.

### Brewfile 만들기

Homebrew로 brewfile에 적힌 리스트를 한번에 설치할 수 있다.

```
# brewfile 생성
brew bundle dump

# brewfile 내용확인
cat brewfile
```

### 설치할 애플리케이션

## brew mas
- Amphetamine
- Checkor
- ColorSlurp
- Keystroke Pro
- Magnet
- WireGuard
- Unsplash Wallpapers
- Yoink
- Mirror Magnet
- [Calendar 366 II](https://formulae.brew.sh/cask/calendar-366#default)

#### brew cask
- [1Password](https://formulae.brew.sh/cask/1password#default)
- [Alfred 5](https://formulae.brew.sh/cask/alfred#default)
- [Bartender 4](https://formulae.brew.sh/cask/banking-4#default)
- [Cyberduck](https://formulae.brew.sh/cask/cyberduck#default)
- [Google Chrome](https://formulae.brew.sh/cask/google-chrome#default)
- [iTerm2](https://formulae.brew.sh/cask/iterm2#default)
- Karabiner-elements
- Keyboard Maestro
- Keka
- PopClip
- TablePlus
- Telegram
- Transmit
- Tunnelblick
- Visual Studio Code
- Slack
- Docker

##### 업무용

- Zeplin
