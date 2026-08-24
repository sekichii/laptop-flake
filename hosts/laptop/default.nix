{ pkgs, ... }: {
  imports = [
    ./disko.nix
    ../../modules/core/boot.nix
    ../../modules/core/services.nix
    ../../modules/core/user.nix
    ../../modules/desktop/services.nix
  ];

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