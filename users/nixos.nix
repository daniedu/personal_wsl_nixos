{
  pkgs,
  inputs,
  lib,
  config,
  ...
}: {
  imports = [
    ./shell/fish.nix
    ./shell/starship.nix
    ./shell/zoxide.nix
    ./shell/tmux.nix
    ./programs/direnv.nix
    ./packages.nix
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "26.05";
}