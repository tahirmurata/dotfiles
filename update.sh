#!/bin/bash

nix flake update --commit-lock-file --flake $(readlink -f ~/.config/nix-darwin)
