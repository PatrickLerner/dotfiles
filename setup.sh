#!/bin/bash

ln vimrc ~/.vimrc
ln irbrc ~/.irbrc
ln gitignore_global ~/.gitignore_global
ln tmux.conf ~/.tmux.conf
ln zshrc ~/.zshrc

ln -s "$(pwd)/config/tmuxinator" ~/.config/tmuxinator
ln -s "$(pwd)/vim" ~/.vim

ls code | while read f ; do
  ln -s "$(pwd)/code/$f" ~/Library/Application\ Support/Code/User/$f
done
