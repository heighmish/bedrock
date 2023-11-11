Add alias for config:
```alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'```

Clone the repo bare:
```git clone --bare git@github.com:heighmish/bedrock.git $HOME/.cfg```

Checkout saved configs to overwrite
```config checkout```

Dont show untracked files:
```config config --local status.showUntrackedFiles no```
