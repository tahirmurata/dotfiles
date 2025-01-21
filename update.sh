#!/bin/bash

nix flake update --commit-lock-file --flake ~/.dotfiles/config/nix-darwin
