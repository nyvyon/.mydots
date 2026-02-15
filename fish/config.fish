# --- load homebrew environment ---
eval "$(/opt/homebrew/bin/brew shellenv)"


# --- environment variables ---
set -gx fish_greeting
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
set -gx HOMEBREW_NO_EMOJI 1


# --- aliases ---
alias ls="eza --all --icons"
alias tree="eza --tree --icons"
alias cd="z"


# --- override clear to also clear tmux history ---
function clear
    command clear
    if set -q TMUX
        tmux clear-history
    end
end


# --- initialize ---
if status is-interactive
    starship init fish | source
    zoxide init fish | source
    if not set -q TMUX
        tmux new -As main
    end
end
