#!/usr/bin/env fish

set action $argv[1]

function create_dir
    set dir $argv[1]
    if not test -d $dir
        mkdir -p $dir
        echo "Created directory: $dir"
    end
end

function set_symlink
    set target $argv[1]
    set link $argv[2]
    ln -sf $target $link
    echo "Set symlink to: $link"
end

function remove_symlink
    set link $argv[1]
    if test -L $link
        rm -rf $link
        echo "Removed symlink: $link"
    end
end

function move_and_replace
    set target $argv[1]
    set link $argv[2]
    cp -rf $target $link
    echo "Moved and replaced: $link"
end

function delete
    set link $argv[1]
    rm -rf $link
    echo "Deleted: $argv[1]"
end

if test "$action" = "--set"
    #alacritty
    create_dir ~/.config/alacritty
    set_symlink ~/.mydots/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
    #fish
    create_dir ~/.config/fish
    set_symlink ~/.mydots/fish/config.fish ~/.config/fish/config.fish
    #starship
    create_dir ~/.config/starship
    set_symlink ~/.mydots/starship/starship.toml ~/.config/starship/starship.toml
    #git
    create_dir ~/.config/git
    set_symlink ~/.mydots/git/config ~/.config/git/config
    #zed
    create_dir ~/.config/zed
    move_and_replace ~/.mydots/zed/settings.json ~/.config/zed/settings.json
else if test "$action" = "--unset"
    #alacritty
    remove_symlink ~/.config/alacritty/alacritty.toml
    #fish
    remove_symlink ~/.config/fish/config.fish
    #starship
    remove_symlink ~/.config/starship/starship.toml
    #git
    remove_symlink ~/.config/git/config
    #zed
    delete ~/.config/zed/settings.json
else
    echo "Usage: ./symlinks.fish [--link|--unlink]"
end
