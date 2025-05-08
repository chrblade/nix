{ config, pkgs, ... }: {
	services = {
		xserver = {
		  enable = true;
		  videoDrivers = [ "nvidia" ];
			desktopManager.plasma6.enable = true;
			displayManager = {
				lightdm.enable = false;
				sddm.enable = true;
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
