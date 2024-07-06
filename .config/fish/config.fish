switch (uname)
    case Darwin
        eval "$(/opt/homebrew/bin/brew shellenv)"
    case Linux
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    case '*'
        echo "Not mac or linux but a third option"
end

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

# Unix tool alias
function ls
    if type -q eza
        eza --icons -F -H --group-directories-first --git -1 $argv
    else
        command ls $argv
    end
end

function cat
    if type -q bat
        bat $argv
    else
        command cat $argv
    end
end

# Ocaml
source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
eval $(opam config env)

# Git
alias gs="git status"
alias lg="lazygit"

alias hs="history | grep"

starship init fish | source
zoxide init --cmd cd fish | source
