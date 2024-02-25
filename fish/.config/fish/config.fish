starship init fish | source
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls='eza --icons -F -H --group-directories-first --git -1'
alias cat='bat'

eval "$(/opt/homebrew/bin/brew shellenv)"
