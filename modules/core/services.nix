{ pkgs, ... }: {
  services.udisks2.enable = true;
  services.gvfs.enable = true;

  boot.supportedFilesystems = [ "exfat" "ntfs" ];

  networking.networkmanager.enable = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;
  services.power-profiles-daemon.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    noto-fonts
    noto-fonts-color-emoji
  ];

  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];

  environment.systemPackages = with pkgs; [
    htop
    tmux
    zsh
    starship
  ];

  services.fstrim.enable = true;
}