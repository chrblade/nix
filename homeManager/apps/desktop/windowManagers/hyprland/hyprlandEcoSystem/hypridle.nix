{ pkgs, ... }: {
	services.hypridle = {
		enable = true;
		package = pkgs.hypridle;
		settings = {
			listener = [
				{
					timeout = 1800;
					on-timeout = "hyprlock";
				}

				{
					timeout = 18000;
					on-timeout = "reboot";
				}
			];
		};
	};
}
