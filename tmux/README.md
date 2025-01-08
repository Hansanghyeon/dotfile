## install

```shell
git clone https://github.com/gpakosz/.tmux.git
mkdir -p ~/.dotfiles/tmux
cp ~/.dotfiles/.tmux/.tmux.conf ~/.dotfiles/tmux/tmux.conf
rm -rf .tmux
echo "export TMUX_CONFIG=~/.dotfiles/tmux/tmux.conf" >> ~/.dotfiles/zsh/config.zsh
```

oh-my-tmux가 적용되지 않는다면

- https://github.com/tmux/tmux/wiki/Getting-Started#configuring-tmux 참고
