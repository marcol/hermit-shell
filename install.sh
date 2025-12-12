#!/bin/sh

function linkFiles() {

  FILES="${ZDOTDIR:-$HOME}/hermit-shell/src/!(*.{fish|toml})"

  echo "\n*** Linking files"

  for rcfile in $FILES; do
    if [ -e $rcfile ]; then
      echo "Creating symlink for: ."$(basename "$rcfile")
      ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
    fi
  done

  # copy fish configuration
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/config.fish" "${ZDOTDIR:-$HOME}/.config/fish/config.fish"

  # copy starship configuration
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/starship.toml" "${ZDOTDIR:-$HOME}/.config/starship.toml"

  shopt -u extglob

}

# link files
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  linkFiles
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    shopt -s extglob
    linkFiles
  fi
fi

# Homebrew items
# Install homebrew
# brew install pygments
# brew install starship

echo "\nDone!"

unset linkFiles
