#!/bin/sh

linkFiles() {

  FILES="${ZDOTDIR:-$HOME}/hermit-shell/src/*"

  echo "\nLinking files...\n"

  for file in $FILES; do
    if [ -f $file ]; then
      echo "Creating symlink for: ."$(basename "$file")
      ln -fs "$file" "${ZDOTDIR:-$HOME}/."$(basename "$file")
    fi
  done

  # ensure presence of ~/.config folder
  DIR="${ZDOTDIR:-$HOME}/.config"
  if [ ! -d "$DIR" ]; then
    mkdir -p "$DIR"
    echo "Had to create .config folder"
  fi

  # copy fish configuration
  echo "Creating symlink for: config.fish"
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/config/fish/config.fish" "${ZDOTDIR:-$HOME}/.config/fish/config.fish"

  # copy starship configuration
  echo "Creating symlink for: starship.toml"
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/config/starship.toml" "${ZDOTDIR:-$HOME}/.config/starship.toml"

  # copy nvim configuration
  echo "Creating symlink for: nvim"
  ln -fs "${ZDOTDIR:-$HOME}/hermit-shell/src/config/nvim" "${ZDOTDIR:-$HOME}/.config/nvim"


  # ensure presence of ~/.config/colorls folder
  DIR="${ZDOTDIR:-$HOME}/.config/colorls"
  if [ ! -d "$DIR" ]; then
    mkdir -p "$DIR"
    echo "Had to create .config/colorls folder"
  fi

  # copy colorls configuration
  COLORLSFILES="${ZDOTDIR:-$HOME}/hermit-shell/src/config/colorls/*"
  for rcfile in $COLORLSFILES; do
    if [ -e $rcfile ]; then
      echo "Creating symlink for: "$(basename "$rcfile")
      ln -fs "$rcfile" "${ZDOTDIR:-$HOME}/.config/colorls/"$(basename "$rcfile")
    fi
  done

  # TODO shopt -u extglob

}

# link files
if [ "$1" = "--force" -o "$1" = "-f" ]; then
  linkFiles
else
  read -r -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " answer
  echo
  if [ $answer = "Y" -o $answer = "y" ]; then
    shopt -s extglob
    linkFiles
    echo "\nInstallaction completed!"
  else
    echo "Instalation aborted."
  fi
fi

unset linkFiles
