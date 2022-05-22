#!/usr/bin/env bash

if [ -x "$(command -v nvim)" ]; then
  echo "Neovim already installed. Skipping!"
else
  echo "Downloading latest version of Neovim"

  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage

  cp nvim.appimage $HOME/.local/bin/nvim

  nvim +PlugUpgrade +PlugUpdate +PlugInstall +qa

  echo "Installed neovim!"
fi
