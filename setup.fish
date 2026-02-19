#!/usr/bin/env fish

set action $argv[1]

set dots_dir (realpath (dirname (status filename)))
echo $dots_dir
set conf_dir $HOME/.config

set configs \
    fish/config.fish \
    starship/starship.toml \
    git/config \
    kitty/kitty.conf \
    bottom/bottom.toml \
    tmux/tmux.conf


function create_symlinks
    for item in $configs
            set dir_name (dirname $item)
            mkdir -p $conf_dir/$dir_name
            ln -sf $dots_dir/$item $conf_dir/$item
            echo "Linked: $item"
    end
end


function remove_symlinks
    for item in $configs
        if test -L $conf_dir/$item
            rm $conf_dir/$item
            echo "Removed: $item"
        end
    end
end


switch "$action"
    case --set
        create_symlinks
    case --unset
        remove_symlinks
    case '*'
        echo "Usage: ./setup.fish [--set|--unset]"
end
