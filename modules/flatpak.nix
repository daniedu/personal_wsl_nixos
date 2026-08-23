{ pkgs, ... }: {
  services.flatpak.enable = true;

  # Required for Flatpak to show apps / handle portals correctly.
  # On WSL (headless/WSLg) you mainly need this for GUI apps via WSLg.
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
    # xdg-desktop-portal-wlr not needed on WSLg, gtk covers most Flatpaks
  };

  # Optional: ensure Flatpak dirs are in XDG_DATA_DIRS (handled by service, but explicit helps)
  # Also expose fonts if you use Flatpak GUI apps
  fonts.fontDir.enable = true;
}
