{ pkgs, ... }: {
	services.hyprpaper = {
		enable = true;
		package = pkgs.hyprpaper;
		settings = {
			preload = [
				"$HOME/Documents/wallp.jpg"
			];
			wallpaper = [
				"HDMI-A-2, $HOME/Documents/wallp.jpg"
			];
		};
	};
}
