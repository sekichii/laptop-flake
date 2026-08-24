{ pkgs, ... }: {
  home.packages = with pkgs; [
    alacritty
    fuzzel
    mako
    waybar
    libnotify

    pavucontrol
    brightnessctl
    playerctl

    swaybg
    wl-clipboard
    grim
    slurp
    swappy

    udiskie
    
    ripgrep
    fd
    eza
    bat
    jq
  ];
}