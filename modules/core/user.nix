( { config, pkgs, ... }:

{
	users.extraUsers.greeter = {
		isNormalUser = false;
		description = "greetd greeter user";
		createHome = false;
		extraGroups = [ "video" "audio" ];
		shell = pkgs.bash;
	};

	security.sudo.enable = true;
	security.sudo.wheelNeedsPassword = true;

	programs.bash.enable = true;
	users.defaultUserShell = pkgs.bash;

	programs.starship.enable = true;

	environment.variables = {
		EDITOR = "nvim";
		LANG = "en_US.UTF-8";
	};
}
)

