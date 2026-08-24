
{ config, pkgs, ... }:

{
	boot.kernelPackages = pkgs.linuxPackages_latest;

	/*boot.loader.grub = {
		enable = true;
		efiSupport = true;
		device = "nodev";
		extraConfig = "GRUB_TIMEOUT=3";
	};*/

	boot.loader.systemd-boot.enable = true;

	boot.loader.efi = {
		efiSysMountPoint = "/boot";
		canTouchEfiVariables = true;
	};
  
	boot.kernelParams = [ "quiet" ];

	boot.initrd.kernelModules = [
		"i915"
	];

	boot.extraModulePackages = [ config.boot.kernelPackages.nvidiaPackages.stable ];
	hardware.enableRedistributableFirmware = true;
}

