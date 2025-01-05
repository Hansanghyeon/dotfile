project의 `.vscode` 안에들어가는 재사용하는 환경파일

- `launch.json`
- `settings.json`

## launch - chrome debug

vscode로 chrome debug를 사용하면 새로운 chrome 브라우저로 실행된다. vscode는 `/Users/${USER}/Library/Application Support/Code/User/workspaceStorage`에다가 새로운 크롬브라우저 profile을 생성하고 `userDataDir`을 설정하지 않으면 랜덤한 폴더로 크롬을 프로필을 설정한다.

크롬에서 프로필경로 확인하는 방법 `chrome://version` 접속
