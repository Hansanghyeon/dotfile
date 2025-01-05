#!/bin/bash

# URL 정의
CONFIG_FILE="$HOME/.ssh/config"
DOWNLOAD_URL="https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/ssh/config"

# 설치 스크립트 시작
echo "Hansanghyeon/dotfile - ssh 설정을 시작합니다"

if [ -f "$CONFIG_FILE" ] && [ -s "$CONFIG_FILE" ]; then
  echo "~/.ssh/config 파일이 존재하며 내용이 있습니다. 종료합니다."
  exit 0
else
  mkdir -p "$HOME/.ssh"
  curl -fsSL "$DOWNLOAD_URL" -o "$CONFIG_FILE"
  chmod 600 "$CONFIG_FILE"
  echo "~/.ssh/config 파일이 성공적으로 다운로드되었습니다."
fi