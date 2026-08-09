{ pkgs, ... }: {
  home.packages = with pkgs; [

    # === Tools ===
    btop
    bat
    ripgrep
    fd
    tree
    fastfetch

    # === Development ===
    lazygit
    shellcheck
    pandoc
    statix

    # === File Manager ===
    yazi
  ];
}