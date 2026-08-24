{ pkgs, ... }: {
  imports = [
    ./hardware.nix
    ../../modules/core/boot.nix
    ../../modules/core/services.nix
    ../../modules/core/user.nix
    ../../modules/desktop/services.nix
    ../../modules/desktop/niri.nix
    ../../modules/desktop/audio.nix
    ../../modules/desktop/nvidia.nix
  ];

  home-manager.users.shina = import ../../home;

  nixpkgs.config.allowUnfree = true;
  time.timeZone = "Europe/Budapest";

  users.users.shina = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    
    initialHashedPassword = "$2b$12$BI4MHI3gSSf1qRlBkg629e1Hc40o.yUcESfVRbAu123eUceirEDwKy";
    packages = with pkgs; [ git neovim fastfetch ];
  };
  networking.hostName = "laptop";

  services.openssh.enable = true;

  system.stateVersion = "24.11";
}
