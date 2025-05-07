{ config, pkgs, ... }: {
	services = {
		xserver = {
		  enable = true;
		  videoDrivers = [ "nvidia" ];
			windowManager.bspwm.enable = true;
			displayManager = {
				startx.enable = true;
				lightdm.enable = false;
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
