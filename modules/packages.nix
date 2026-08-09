{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    glib
    xdg-utils

    # === Archive Tools ===
    unzip
    zip
    p7zip
    unrar

    opencode
  ];
}