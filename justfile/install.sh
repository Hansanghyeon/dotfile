#!/bin/bash

# URL 정의
JUSTFILE_URL="https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/justfile/justfile"
JUSTFILE_LOAD_URL="https://raw.githubusercontent.com/Hansanghyeon/dotfile/refs/heads/main/justfile/justfile.load"

# 설치 스크립트 시작
echo "Hansanghyeon/dotfile - justfile 설정을 시작합니다."

# .zshrc alias m 처리
echo ".zshrc에서 alias m을 처리합니다..."
if grep -q "^alias m=" ~/.zshrc; then
    # alias m이 이미 존재
    ALIAS_CONTENT=$(grep "^alias m=" ~/.zshrc)
    if [[ "$ALIAS_CONTENT" == 'alias m="just _cmd"' ]]; then
        echo "alias m이 이미 올바르게 설정되어 있습니다."
    else
        echo "alias m이 이미 존재하지만 다른 명령어로 설정되어 있습니다."
        echo "현재 설정: $ALIAS_CONTENT"
        echo "스크립트를 종료합니다. 필요시 기존 alias m을 제거하세요."
        exit 1
    fi
else
    # alias m이 없으므로 추가
    echo '# justfile을 효율적으로 사용하기 위한 zsh config' >> ~/.zshrc
    echo '# 참고 - https://github.com/Hansanghyeon/dotfile/tree/main/justfile' >> ~/.zshrc
    echo 'alias m="just _cmd"' >> ~/.zshrc
    echo "alias m이 성공적으로 추가되었습니다."
fi

# .justfile_ 다운로드
echo ".justfile_을 다운로드합니다..."
curl -fsSL "$JUSTFILE_URL" > ~/.justfile_

if [ $? -eq 0 ]; then
    echo ".justfile_이 성공적으로 다운로드되었습니다"
else
    echo ".justfile_ 다운로드에 실패했습니다. 인터넷 연결 또는 URL을 확인하세요"
    echo "$JUSTFILE_URL"
    exit 1
fi

# justfile 업데이트
echo "justfile을 업데이트합니다..."
JUSTFILE_LOAD_CONTENT=$(curl -fsSL "$JUSTFILE_LOAD_URL")

if [ $? -ne 0 ]; then
    echo "justfile.load를 다운로드하는 데 실패했습니다. 인터넷 연결 또는 URL을 확인하세요"
    echo "$JUSTFILE_LOAD_URL"
    exit 1
fi

# 기존 justfile이 존재하는지 확인
if [ -f ./justfile ]; then
    # justfile 최상단에 내용 추가
    if ! grep -q "Hansanghyeon/dotfile" ./justfile; then
        # 기존 내용을 임시 파일로 백업
        mv ./justfile ./justfile.bak
        echo "$JUSTFILE_LOAD_CONTENT" > ./justfile
        cat ./justfile.bak >> ./justfile
        rm ./justfile.bak
        echo "justfile이 성공적으로 업데이트되었습니다"
    else
        echo "justfile에 이미 Hansanghyeon/dotfile 설정이 존재합니다"
    fi
else
    # justfile이 없는 경우 새로 생성
    echo "$JUSTFILE_LOAD_CONTENT" > ./justfile
    echo "새로운 justfile이 생성되었습니다"
fi

# 설치 완료 메시지
echo "설치가 성공적으로 완료되었습니다. 터미널을 재시작하거나 'source ~/.zshrc' 명령어를 실행하여 변경 사항을 적용하세요"
