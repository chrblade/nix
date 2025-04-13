{ pkgs, ... }: {
	users.users = {
		chronoblade = {
			isNormalUser = true;
			extraGroups = [ "wheel" "input" "networkmanager" "video" "audio" ];
			shell = pkgs.zsh;
		};
	};
	services.getty.autologinUser = "chronoblade";
	environment.loginShellInit = ''
		[[ "$(tty)" == /dev/tty1 ]] && Hyprland
	'';
}
