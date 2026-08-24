{ pkgs, ... }: {
  programs.niri.enable = true;

  environment.systemPackages = [
    pkgs.tuigreet
  ];

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "tuigreet --time --remember --cmd niri";
        user = "greeter";
      };
    };
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  security.polkit.enable = true;
  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gnome ];
  };
}