set -g fish_greeting
set -g PATH /opt/homebrew/bin $PATH
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

alias ls="eza --all --icons"
alias cd="z"

starship init fish | source
zoxide init fish | source
