{ config, pkgs, ... }: {
	services = {
		xserver = {
		  enable = true;
		  videoDrivers = [ "nvidia" ];
			desktopManager.gnome.enable = true;
			desktopManager.lxqt.enable = true;
			displayManager = {
				lightdm.enable = false;
				gdm.enable = true;
			};
		};
		libinput = {
			enable = true;
			mouse = {
				accelProfile = "adaptive";
			};
		};
	};
}
