#!/usr/bin/env bash

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Reload config
alias reload="source ~/.config/fish/config.fish"

# pipx to pip
alias pip="pipx"

# Update everything
alias update="brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update"

string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)

# vscode
function code
  set location "$PWD/$argv"
  open -n -b "com.microsoft.VSCode" --args $location
end

fish_add_path /opt/homebrew/bin

# LaTex
fish_add_path "/usr/libexec/path_helper"
fish_add_path "/usr/local/texlive/2025/bin/universal-darwin/"

starship init fish | source