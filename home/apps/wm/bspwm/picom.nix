{ pkgs, ... }: {
	services.picom = {
		enable = true;
		package = pkgs.picom;
		backend = "glx";
		vSync = false;
		settings = {
			corner-radius = 12;
			round-borders = 12;
			use-damage = false;
			unredir-if-possible = true;
		};
	};
}
