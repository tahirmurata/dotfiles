#!/bin/bash

# Function for config directory links
link_config() {
    local source="$HOME/.dotfiles/config/$1"
    local target="$HOME/.config/$1"

    [ -e "$target" ] && rm -rf "$target"
    ln -sf "$source" "$target"
}

# Function for home directory links
link_home() {
    local source="$HOME/.dotfiles/config/$1"
    local target="$HOME/$1"

    [ -e "$target" ] && rm -rf "$target"
    ln -sf "$source" "$target"
}

# Ensure .config directory exists
mkdir -p "$HOME/.config"

# Loop through all items in config directory
for item in "$HOME/.dotfiles/config"/*; do
    name=$(basename "$item")

    if [ "$name" = "zed" ]; then
        # Symlink only settings.json in zed
        source_file="$HOME/.dotfiles/config/zed/settings.json"
        target_file="$HOME/.config/zed/settings.json"

        [ -e "$target_file" ] && rm -f "$target_file"
        ln -sf "$source_file" "$target_file"
    elif [ -f "$item" ]; then
        # Link files to home directory
        link_home "$name"
    elif [ -d "$item" ]; then
        # Link directories to .config
        link_config "$name"
    fi
done