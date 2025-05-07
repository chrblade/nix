{ pkgs, ... }: {
	services.flameshot = {
		enable = true;
		package = pkgs.flameshot;
		settings = {
			General = {
			contrastUiColor = "#232634";
			uiColor = "#c6d0f5";
		  };
	  };
  };
}
