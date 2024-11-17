#!/bin/bash

rm -rf $HOME/.zshrc
ln -sw $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.config/kitty
ln -sw $HOME/.dotfiles/kitty $HOME/.config/kitty
