#!/bin/bash
if [[ -L "$HOME/.vimrc" ]]
then
  echo "~/.vimrc is a link, not doing anything"
else
  mv ~/.vimrc ~/.vimrc-backup-$(date +%s)
  cd ~
  ln -s ./dotfiles/.vimrc .vimrc
  echo "Installed .vimrc to ~/.vimrc"
fi

git config --global user.email "0effect@protonmail.com"
git config --global user.name "0effect"
