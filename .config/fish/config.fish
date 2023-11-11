starship init fish | source
export PATH="$HOME/.cargo/bin:$PATH"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='exa --icons -F -H --group-directories-first --git -1'
