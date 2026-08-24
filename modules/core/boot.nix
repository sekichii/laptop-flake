
{ config, pkgs, ... }:

{
	boot.kernelPackages = pkgs.linuxPackages_latest;

	boot.microcode = {
		enable = true;
		package = pkgs.intel-microcode;
	};

	boot.loader.grub = {
		enable = true;
		efiSupport = true;
		device = "nodev";
		extraConfig = "GRUB_TIMEOUT=3";
	};

	boot.efi = {
		efiSysMountPoint = "/boot";
		canTouchEfiVariables = true;
	};
  
	boot.kernelParams = [ "quiet" ];

	boot.initrd.kernelModules = [
		"i915"
		"drm"
		"drm_kms_helper"
		"nvidia"
		"nvidia_modeset"
		"nvidia_uvm"
		"nvidia_drm"
	];

	boot.extraModulePackages = [ config.boot.kernelPackages.nvidiaPackages.stable ];
	hardware.enableRedistributableFirmware = true;
}

