# WSL-specific options are documented in the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ pkgs, ... }: {

  imports = [
    ./modules/locale.nix
    ./modules/misc.nix
    ./modules/packages.nix
    ./modules/flatpak.nix
  ];

  wsl.enable = true;
  wsl.defaultUser = "nixos";

  users.users.nixos.shell = pkgs.fish;

  programs.fish.enable = true;

  system.stateVersion = "26.05";
}