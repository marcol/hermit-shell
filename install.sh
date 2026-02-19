#!/usr/bin/env bash

# Get the absolute path of the directory where this script is located
REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
SOURCE="$REPO_ROOT/src"

# Use ZDOTDIR if available, otherwise default to HOME
TARGET_HOME="${ZDOTDIR:-$HOME}"
# Use XDG_CONFIG_HOME if available, otherwise default to ~/.config
CONFIG_DIR="${XDG_CONFIG_HOME:-$TARGET_HOME/.config}"

linkFiles() {
    echo "Linking top-level dotfiles..."
    
    # Link top-level files in src/ to home directory
    # e.g., src/zshrc -> ~/.zshrc
    for file in "$SOURCE"/*; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            target="$TARGET_HOME/.$filename"
            echo "Linking: .$filename"
            ln -fs "$file" "$target"
        fi
    done

    echo "\nLinking config files to $CONFIG_DIR..."
    
    # Ensure config directory exists
    if [ ! -d "$CONFIG_DIR" ]; then
        mkdir -p "$CONFIG_DIR"
        echo "Created directory: $CONFIG_DIR"
    fi
    
    # Link files inside src/config recursively to CONFIG_DIR
    # This avoids overriding existing folders and only links files
    find "$SOURCE/config" -type f | while read -r file; do
        # Get relative path from src/config
        rel_path="${file#$SOURCE/config/}"
        target="$CONFIG_DIR/$rel_path"
        target_parent="$(dirname "$target")"
        
        # Ensure target subdirectory exists
        if [ ! -d "$target_parent" ]; then
            mkdir -p "$target_parent"
            echo "Created directory: $target_parent"
        fi
        
        echo "Linking: $rel_path"
        ln -fs "$file" "$target"
    done
}

# Main execution logic
if [[ "$1" == "--force" || "$1" == "-f" ]]; then
    linkFiles
else
    # Prompt for confirmation
    read -r -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " answer
    echo
    if [[ "$answer" =~ ^[Yy]$ ]]; then
        linkFiles
        echo "\nInstallation completed!"
    else
        echo "Installation aborted."
    fi
fi

