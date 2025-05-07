{ pkgs, ... }: {
	services.picom = {
		enable = true;
		package = pkgs.picom;
		backend = "glx";
		vSync = false;
		settings = {
			corner-radius = 0;
			round-borders = 0;
			use-damage = false;
			unredir-if-possible = true;

			shadow = true;
			shadow-radius = 13;
			shadow-color = "#181926";
			shadow-offset-x = "-10";
			shadow-offset-y = "-10";
		};
	};
}
