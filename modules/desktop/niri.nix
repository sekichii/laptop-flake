( { pkgs, ... }:

{
	programs.niri = {
		enable = true;
	};

	environment.systemPackages = with pkgs; [
		alacritty
		waybar
		wl-clipboard
		grim
		slurp
		starship
		neovim
		ripgrep
		fd
		curl
		git
	];
}
)

