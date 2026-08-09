# WSL-specific options are documented in the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ ... }: {

  imports = [
    ./modules/locale.nix
    ./modules/misc.nix
    ./modules/packages.nix
  ];

  wsl.enable = true;
  wsl.defaultUser = "nixos";

  system.stateVersion = "26.05";
}