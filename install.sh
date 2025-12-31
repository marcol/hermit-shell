#!/bin/sh

function linkFiles() {

  FILES="${ZDOTDIR:-$HOME}/hermit-shell/src/!(*.{fish|toml|yaml})"
  FILES="${ZDOTDIR:-$HOME}/hermit-shell/src/!(config)"

  echo "\nLinking files...\n"

  for rcfile in $FILES; do
    if [ -e $rcfile ]; then
      echo "Creating symlink for: ."$(basename "$rcfile")
      ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/."$(basename "$rcfile")
    fi
  done

  # copy fish configuration
  echo "Creating symlink for: config.fish"
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/config/fish/config.fish" "${ZDOTDIR:-$HOME}/.config/fish/config.fish"

  # copy starship configuration
  echo "Creating symlink for: starship.toml"
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/config/starship.toml" "${ZDOTDIR:-$HOME}/.config/starship.toml"

  # copy colorls configuration
  COLORLSFILES="${ZDOTDIR:-$HOME}/hermit-shell/src/config/colorls/*"
  for rcfile in $COLORLSFILES; do
    if [ -e $rcfile ]; then
      echo "Creating symlink for: "$(basename "$rcfile")
      ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/.config/colorls/"$(basename "$rcfile")
    fi
  done

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
    echo "\nDone!"
  else
    echo "\nAborted."
  fi
fi

unset linkFiles
