eval "$(/opt/homebrew/bin/brew shellenv)"

set -gx fish_greeting
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
set -gx HOMEBREW_NO_EMOJI 1

alias ls="eza --all --icons"
alias tree="eza --tree --icons"
alias cd="z"

starship init fish | source
zoxide init fish | source
