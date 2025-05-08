{ config, pkgs, ... }: {
	services = {
		xserver = {
		  enable = true;
		  videoDrivers = [ "nvidia" ];
			desktopManager = {
				gnome.enable = true;
				lxqt.enable = true;
				mate.enable = true;
			};
			windowManager = {
				icewm.enable = true;
			};
			displayManager = {
				lightdm.enable = true;
				gdm.enable = false;
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
