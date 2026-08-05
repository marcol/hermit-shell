cds() {
  local folder=$1
  cd $HOME/Projects/Software/$folder && ll
}

watch() {
  ls "$1" | entr python3 "$1"
}

update-pi() {
    echo "\n=== Updating Package Lists ==="
    sudo apt update || return 1

    echo "\n=== Upgrading Raspberry Pi OS & APT Homebridge Package ==="
    sudo apt full-upgrade -y || return 1

    echo "\n=== Cleaning Up APT Cache ==="
    sudo apt autoremove -y && sudo apt clean

    echo "\n=== Updating All Global NPM Packages (Homebridge + Plugins) ==="
    sudo npm update -g

    echo "\n=== Restarting Homebridge Service ==="
    sudo hb-service restart
}
