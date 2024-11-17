#!/bin/bash

darwin-rebuild switch --flake $(readlink -f ~/.config/nix-darwin)#pastc-darwin
