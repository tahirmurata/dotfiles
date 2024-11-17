# Dotfiles

A personal dotfiles configuration for macOS using Nix ecosystem tools:

## Overview
- Uses [Nix](https://nixos.org/) as the package manager for reproducible builds
- Leverages [nix-darwin](https://github.com/LnL7/nix-darwin) for macOS system configuration and Homebrew casks
- Integrates [nix-homebrew](https://github.com/zhaofengli/nix-homebrew) to manage Homebrew installation via Nix

## Usage
1. Install Nix (Lix)
    ```sh
    curl -sSf -L https://install.lix.systems/lix | sh -s -- install
    ```
2. Clone this repository
    ```sh
    git clone git@github.com:pastc/dotfiles.git ~/.dotfiles
    ```
3. Run the installation script
    ```sh
    cd ~/.dotfiles && ./nix.sh && ./link.sh
    ```
