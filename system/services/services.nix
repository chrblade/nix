{ config, pkgs, ... }: {
	services = {
		xserver = {
		#  enable = true;
		#  windowManager.bspwm.enable = true;
    #  displayManager.lightdm.enable = false;
    #  displayManager.startx.enable = true;
			videoDrivers = [ "nvidia" ];
		};
		#libinput = {
		#	enable = true;
		#	mouse = {
		#		accelProfile = "adaptive";
		#	};
		#};
		openssh = {
			enable = true;
			ports = [ 95 ];
			settings = {
      PasswordAuthentication = true;
			UseDns = true;
			AllowUsers = [ "chronoblade" ];
			PermitRootLogin = "yes";
			};
		};
	};
}
