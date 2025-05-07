{ pkgs, ... }: {
	home.packages = with pkgs; [
		xorg.xsetroot
		xkb-switch

		polybar 
		nitrogen
	];
	xsession.windowManager.bspwm = {
		enable = true;
		package = pkgs.bspwm;
		startupPrograms = [
		  "sxhkd"
			"nitrogen --restore"
			"xsetroot -cursor_name left_ptr"
			"picom --config ~/.config/picom/picom.conf"
			"${pkgs.xdg-desktop-portal-gtk}/libexec/xdg-desktop-portal-gtk"
			"dunst conf ~/.config/dunst/dunstrc"
			#"polybar -c ~/.config/eww/fix.ini"
			#"eww open bar"
			"polybar"
		];
		monitors = {
			HDMI-2 = [ "1" "2" "3" "4" "5" "6" ];
		};
		settings = {
			border_width = 0;
			window_gap = 11;
			split_ratio = 0.52;
			focus_follows_pointer = true;
			pointer_modifier = "super";
			borderless_monocle = true;
			gapless_monocle = true;
			pointer_motion_interval = "10ms";
		};
	};
}
