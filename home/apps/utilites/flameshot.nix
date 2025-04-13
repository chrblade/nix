{ pkgs, ... }: {
	services.flameshot = {
		enable = true;
		package = pkgs.flameshot;
		settings = {
			General = {
			contrastUiColor = "#282828";
			uiColor = "#ebdbb2";
		  };
	  };
  };
}
