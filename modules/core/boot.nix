
{ config, pkgs, ... }:

{
	boot.kernelPackages = pkgs.linuxPackages_latest;

	# Microcode for Intel CPUs
	boot.microcode = {
		enable = true;
		package = pkgs.intel-microcode;
	};

	boot.loader.grub = {
		enable = true;
		efiSupport = true;
		device = "nodev"; # use EFI only
		extraConfig = "GRUB_TIMEOUT=3";
	};

	boot.efi = {
		efiSysMountPoint = "/boot";
		canTouchEfiVariables = true;
	};
  
	boot.kernelParams = [ "quiet" ];
	hardware.enableRedistributableFirmware = true;
}

