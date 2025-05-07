{ pkgs, ... }: {
	users.users = {
		chronoblade = {
			isNormalUser = true;
			extraGroups = [ "wheel" "input" "networkmanager" "video" "audio" ];
			shell = pkgs.zsh;
		};
	};
}
