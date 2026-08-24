{ pkgs, ... }: {
  imports = [
    ./disko.nix
    ../../modules/desktop/services.nix
  ];

  boot.loader = {
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
    };

    efi = {
      efiSysMountPoint = "/boot";
      canTouchEfiVariables = true;
    };
  };

  time.timeZone = "Europe/Budapest";

  users.users.shina = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    initialPassword = "shina";
    packages = with pkgs; [ git neovim fastfetch ];
  };

  system.stateVersion = "24.11";
}