## git config

### mac

- 1password 서명 등록하기

### 유틸리티

awesome git log

https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs

```
[alias]
lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all
lg2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'
lg = lg1
```

awesome git diff

[so-fancy/diff-so-fancy: Good-lookin' diffs. Actually… nah… The best-lookin' diffs.](https://github.com/so-fancy/diff-so-fancy)

```
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"
```
