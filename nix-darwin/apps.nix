{ pkgs, ... }:

{
  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    # Development tools
    vim
    neovim

    # Programming languages
    nil
    nixpkgs-fmt
    go

    # Programming cli
    pnpm

    # CLI tools
    btop
    fastfetch
    bat
  ];

  environment.variables.EDITOR = "nvim";

  homebrew = {
    enable = true;
    onActivation.autoUpdate = true;
    # updates homebrew packages on activation,
    # can make darwin-rebuild much slower (otherwise i'd forget to do it ever though)
    casks = [
      "hammerspoon"
      "firefox"
      "visual-studio-code"
      "kitty"
      "discord"
      "iina"
      "alt-tab"
    ];
  };
}
