#!/usr/bin/env bash

echo "Setting up directories"

if [ ! -d "$HOME/me" ]; then
  mkdir "$HOME/me"
fi

codeDirs=("go" "misc" "python" "ruby")

for codeDir in ${codeDirs[@]}; do
  if [ ! -d "$HOME/code/$codeDir" ]; then
    mkdir -p "$HOME/code/$codeDir"
  fi
done

if [ ! -d "$HOME/.local/bin" ]; then
  echo "Setting up $HOME/.local/bin"
  mkdir -p $HOME/.local/bin
fi

echo "Done setting up env!"
