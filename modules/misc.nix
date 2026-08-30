{ pkgs, ... }: {
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    extra-substituters = [ "https://nvf.cachix.org" ];
    extra-trusted-public-keys = [ "nvf.cachix.org-1:GMQWiUhZ6ux9D5CvFFMwnc2nFrUHTeGaXRlVBXo+naI=" ];
  };

  nixpkgs.config.allowUnfree = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  stylix = {
    enable = true;
    autoEnable = false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/tango.yaml";
  };
}
