{ pkgs, ... }: {
  home.username = "shina";
  home.homeDirectory = "/home/shina";
  home.stateVersion = "24.11";

  xdg.configFile = {
    "alacritty".source = ./dotfiles/alacritty;
    "fuzzel".source    = ./dotfiles/fuzzel;
    "mako".source      = ./dotfiles/mako;
    "niri".source      = ./dotfiles/niri;
    "waybar".source    = ./dotfiles/waybar;
  };

  services.mako = {
    enable = true;
  };

  programs.home-manager.enable = true;
}