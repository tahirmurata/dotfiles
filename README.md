<p align="center">
    <img src="https://1.gravatar.com/avatar/a9a8386448882291bd0082d2de054a9fa49a81f00c1c53917a675906e56737ff?size=512" width="160" />
    <h2 align="center">Dotfiles</h2>
</p>

<p align="center">Configuration for MacBook Air</p>

## Usage
1. Install Nix (Lix)

    ```sh
    curl -sSf -L https://install.lix.systems/lix | sh -s -- install
    ```
2. Clone the repository into `~/.dotfiles`:

    ```sh
    git clone --recurse-submodules https://github.com/tahirmurata/dotfiles.git ~/.dotfiles
    ```
3. Run the `link.sh` script:

    ```sh
    ~/.dotfiles/link.sh
    ```
4. Install `nix-darwin`:

    Since darwin-rebuild isn't installed yet, the command uses nix to run darwin-rebuild directly from the nixpkgs repository.

    ```sh
    nix run nix-darwin -- switch --flake ~/.config/nix-darwin
    ```
5. Setup git with gh:

    ```sh
    gh auth login && gh auth setup-git
    ```

## License
This repository is licensed under the [Apache License 2.0](LICENSE)
