{ pkgs, ... }:
{
  programs.direnv = {
    enable = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
    config = {
      global = {
        warn_timeout = "0s";
      };
    };

    stdlib = ''
      export DIRENV_WARN_TIMEOUT=0

      use_devenv() {
        watch_file devenv.lock
        eval "$(devenv print-dev-env)"
      }
    '';
  };

  home.packages = with pkgs; [
    devenv
    nixfmt
  ];
}