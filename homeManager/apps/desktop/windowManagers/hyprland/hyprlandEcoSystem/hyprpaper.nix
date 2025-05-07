{ pkgs, ... }: {
	services.hyprpaper = {
		enable = true;
		package = pkgs.hyprpaper;
		settings = let 
			wallp = "$HOME/nixConfiguration/homeManagerConfigurations/appsConfigurations/desktopEnvironment/windowManagers/anotherFiles/wallp.jpg";
		in {
			preload = [
				"${wallp}"
			];
			wallpaper = [
				"HDMI-A-2, ${wallp}"
			];
		};
	};
}
