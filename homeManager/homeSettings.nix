{ config, pkgs, ... }: {
	nixpkgs.config.allowUnfree = true;
	home = {
		username = "chronoblade";
		homeDirectory = "/home/chronoblade";
		stateVersion = "24.11";
	};
}
