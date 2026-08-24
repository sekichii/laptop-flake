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

    gcc
    clang
    cmake
    ninja
    pkg-config
    gnumake
    gdb
    lld

    rustc
    cargo
    rustup
    rust-analyzer

    python3
    nodejs
    go
    openjdk

    vscode

    steam
    mangohud
    vulkan-tools

    flameshot
    keepassxc
    fastfetch
    polychromatic
  ];
}
