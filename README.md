<p align="center">
    <img src="https://1.gravatar.com/avatar/a9a8386448882291bd0082d2de054a9fa49a81f00c1c53917a675906e56737ff?size=512" width="160" />
    <h2 align="center">Dotfiles</h2>
</p>

<p align="center">Configuration files for macOS</p>

## Usage
1. Install Nix (Lix)

    ```sh
    curl -sSf -L https://install.lix.systems/lix | sh -s -- install
    ```
2. Clone the repository into `~/.dotfiles`:

    ```sh
    git clone --recurse-submodules git@github.com:pastc/dotfiles.git ~/.dotfiles
    ```
3. Run the `link.sh` script:

    ```sh
    ~/.dotfiles/link.sh
    ```
4. Install `nix-darwin`:

    Instead of using darwin-installer, you can just run darwin-rebuild switch to install nix-darwin. As darwin-rebuild won't be installed in your PATH yet, you can use the following command:

    ```sh
    nix run nix-darwin -- switch --flake ~/.config/nix-darwin
    ```
5. Run the `rebuild.sh` script:

    ```sh
    ~/.dotfiles/rebuild.sh
    ```

## License
This repository is licensed under the [Apache License 2.0](LICENSE)
