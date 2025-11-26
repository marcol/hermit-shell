#!/bin/sh

# TO DO
# function linkFiles() {

#   FILES="${ZDOTDIR:-$HOME}/.dotfiles/src/!(*.{fish})"

#   echo "\n*** Linking files"

#   for rcfile in $FILES; do
#     if [ -e $rcfile ]; then
#       echo "Creating symlink for: ."$(basename "$rcfile")
#       ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
#     fi
#   done

# }

# # link files
# if [ "$1" == "--force" -o "$1" == "-f" ]; then
#   linkFiles
# else
#   read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
#   echo
#   if [[ $REPLY =~ ^[Yy]$ ]]; then
#     shopt -s extglob
#     linkFiles
#     shopt -u extglob
#   fi
# fi

# # copy fish configuration
# ln -fs "${ZDOTDIR:-$HOME}/.dotfiles/src/config.fish" "${ZDOTDIR:-$HOME}/.config/fish/config.fish"

# # copy starship configuration
# ln -fs "${ZDOTDIR:-$HOME}/.dotfiles/theme/starship.toml" "${ZDOTDIR:-$HOME}/.config/starship.toml"

# echo "\nDone!"

# unset linkFiles
