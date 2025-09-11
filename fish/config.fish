set -g fish_greeting
set -g PATH /opt/homebrew/bin $PATH
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

set -g fish_color_normal normal
set -g fish_color_command 88c0d0
set -g fish_color_keyword 81a1c1
set -g fish_color_quote a3be8c
set -g fish_color_redirection b48ead --bold
set -g fish_color_end 81a1c1
set -g fish_color_error bf616a
set -g fish_color_param d8dee9
set -g fish_color_comment 4c566a --italics
set -g fish_color_match --background=brblue
set -g fish_color_selection d8dee9 --bold --background=434c5e
set -g fish_color_search_match --bold --background=434c5e
set -g fish_color_history_current e5e9f0 --bold
set -g fish_color_operator 81a1c1
set -g fish_color_escape ebcb8b
set -g fish_color_cwd 5e81ac
set -g fish_color_cwd_root bf616a
set -g fish_color_option 8fbcbb
set -g fish_color_valid_path --underline
set -g fish_color_autosuggestion 4c566a
set -g fish_color_user a3be8c
set -g fish_color_host a3be8c
set -g fish_color_host_remote ebcb8b
set -g fish_color_status bf616a
set -g fish_color_cancel --reverse
set -g fish_pager_color_prefix normal --bold --underline
set -g fish_pager_color_progress 3b4252 --background=d08770
set -g fish_pager_color_completion e5e9f0
set -g fish_pager_color_description ebcb8b --italics
set -g fish_pager_color_selected_background --background=434c5e
set -g fish_pager_color_secondary_background
set -g fish_pager_color_selected_description
set -g fish_pager_color_secondary_completion
set -g fish_pager_color_background
set -g fish_pager_color_selected_completion
set -g fish_pager_color_secondary_prefix
set -g fish_pager_color_secondary_description
set -g fish_pager_color_selected_prefix

alias ls="eza --all --icons"
alias cd="z"

starship init fish | source
zoxide init fish | source
