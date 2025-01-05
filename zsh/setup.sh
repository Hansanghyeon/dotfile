#!/bin/bash

# 경로 및 URL 정의
CONFIG_FOLDER="$HOME/.dotfiles/zsh"
CONFIG_FILE="$CONFIG_FOLDER/config.zsh"
ZOXIDE_FILE="$CONFIG_FOLDER/zoxide.zsh"
DOWNLOAD_URL_CONFIG="https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/zsh/config.zsh"
DOWNLOAD_URL_ZOXIDE="https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/zsh/zoxide.zsh"
ZSHRC_FILE="$HOME/.zshrc"

# 설치 스크립트 시작
echo "Hansanghyeon/dotfile - zsh 설정을 시작합니다"

# .dotfiles/zsh 디렉터리 생성
if [ ! -d "$CONFIG_FOLDER" ]; then
  mkdir -p "$CONFIG_FOLDER"
  echo "$CONFIG_FOLDER 디렉터리를 생성했습니다."
fi

# config.zsh 다운로드
if [ ! -f "$CONFIG_FILE" ]; then
  curl -fsSL "$DOWNLOAD_URL_CONFIG" -o "$CONFIG_FILE"
  echo "config.zsh 파일이 성공적으로 다운로드되었습니다."
else
  echo "config.zsh 파일이 이미 존재합니다. 다운로드를 생략합니다."
fi

# zoxide.zsh 다운로드
if [ ! -f "$ZOXIDE_FILE" ]; then
  curl -fsSL "$DOWNLOAD_URL_ZOXIDE" -o "$ZOXIDE_FILE"
  echo "zoxide.zsh 파일이 성공적으로 다운로드되었습니다."
else
  echo "zoxide.zsh 파일이 이미 존재합니다. 다운로드를 생략합니다."
fi

# .zshrc에 소스 추가
if ! grep -q "source \"${HOME}/.dotfiles/zsh/config.zsh\"" "$ZSHRC_FILE"; then
  echo 'source "${HOME}/.dotfiles/zsh/config.zsh"' >> "$ZSHRC_FILE"
  echo ".zshrc에 source 추가 완료."
else
  echo ".zshrc에 이미 source가 추가되어 있습니다."
fi

echo "설정이 완료되었습니다."