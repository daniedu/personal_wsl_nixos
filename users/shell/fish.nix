{ pkgs, ... }: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      fish_add_path ~/.local/bin
      set -g fish_greeting ""
      alias nvf="nix run github:daniedu/personal_nvf"
      starship init fish | source
      fastfetch
    '';
  };
}