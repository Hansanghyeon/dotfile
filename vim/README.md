## neovim

> [!NOTE]
> 나의 메인 에디터는 IntelliJ 또는 vscode를 사용할 것이기 때문에 text editor는 해키하게 커스텀하지 않는다. (플러그인 추가 금지)

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
