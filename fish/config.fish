set -g fish_greeting
set -g PATH /opt/homebrew/bin $PATH
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x HOMEBREW_NO_EMOJI 1

alias ls="eza --all --icons"
alias cd="z"

starship init fish | source
zoxide init fish | source
