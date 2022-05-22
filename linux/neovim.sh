#/usr/bin/env bash

echo "Downloading latest version of neovim"

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

cp nvim.appimage $HOME/.local/bin/nvim

# TODO -- auto install plugins

echo "Installed neovim!"
