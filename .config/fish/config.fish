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
eval "$(/opt/homebrew/bin/brew shellenv)"
source /Users/hpro/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
eval $(opam config env)

# Git
alias gs="git status"
alias lg="lazygit"

starship init fish | source
zoxide init --cmd cd fish | source
