{ config, pkgs, ... }: {
	services = {
		desktopManager.cosmic.enable = false;
		xserver = {
		  enable = true;
		  videoDrivers = [ "nvidia" ];
			desktopManager.pantheon.enable = false;
		  displayManager.lightdm.enable = false;
			displayManager.gdm.enable = true;
			desktopManager.gnome.enable = true;
		};
		libinput = {
			enable = true;
			mouse = {
				accelProfile = "adaptive";
			};
		};
	};
}
