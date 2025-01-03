#!/bin/bash

# 설치 스크립트 시작
echo "Hansanghyeon/dotfile - justfile 설정을 시작합니다."

# .zshrc 업데이트
echo ".zshrc를 업데이트합니다..."
curl -fsSL https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/justfile/.zshrc >> ~/.zshrc

if [ $? -eq 0 ]; then
    echo ".zshrc가 성공적으로 업데이트되었습니다."
else
    echo ".zshrc 업데이트에 실패했습니다. 인터넷 연결 또는 URL을 확인하세요."
    exit 1
fi

# .justfile_ 다운로드
echo ".justfile_을 다운로드합니다..."
curl -fsSL https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/justfile/justfile > ~/.justfile_

if [ $? -eq 0 ]; then
    echo ".justfile_이 성공적으로 다운로드되었습니다."
else
    echo ".justfile_ 다운로드에 실패했습니다. 인터넷 연결 또는 URL을 확인하세요."
    exit 1
fi

# 설치 완료 메시지
echo "설치가 성공적으로 완료되었습니다. 터미널을 재시작하거나 'source ~/.zshrc' 명령어를 실행하여 변경 사항을 적용하세요."
