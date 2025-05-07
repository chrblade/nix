{ pkgs, ... }: {
	programs.hyprlock = {
		enable = true;
		package = pkgs.hyprlock;
		settings = 
		let 
			monitor = "HDMI-A-2";
			font = "JetBrains Mono";
			wallpaper = "~/nix/homeManager/apps/desktop/windowManagers/anotherFiles/wallp.jpg";
			avatar = "~/nix/homeManager/apps/desktop/windowManagers/anotherFiles/avatar.jpg";

			bg = "rgb(282828)";
			fg = "rgb(ebdbb2)";
			red = "rgb(fb4934)";
			yel = "rgb(fabd2f)";
		in {
			general = {
				hide_cursor = false;
				grace = 5;
				ignore_empty_input = false;
				immediate_render = false;
				text_trim = true;
				fractional_scaling = 0;
				screencopy_mode = 0;
				fail_timeout = 2000;
			};
			
			background = [
				{
					monitor = "${monitor}";
					path = "${wallpaper}";
					color = "${bg}";
					blur_passes = 1;
					blur_size = 10;
					noise = 0;
				}
			];
			
			image = [
				{
					monitor = "${monitor}";
					path = "${avatar}";
					size = 150;
					border_size = 2;
					border_color = "${fg}";
					position = "0, 150";
				}
			];

			shape = [
				{
					monitor = "${monitor}";
					size = "500, 300";
					rounding = 12;
					color = "${bg}";
				}
			];

			input-field = [
				{
					monitor = "${monitor}";	
					size = "300, 40";
					position = "0, -90";
					hide_input = false;
					fade_on_empty = false;
					outline_thickness = 0;
					inner_color = "${fg}";
					font_color = "${bg}";
					font_family = "${font}";
					capslock_color = "${fg}";
					numlock_color = "${fg}";
					bothlock_color = "${fg}";
					fail_color = "${red}";
					check_color = "${yel}";
				}
			];
			
			label = [
				{
					monitor = "${monitor}";
					text = "cmd[update:1000] echo 'Good '$(~/nix/homeManager/apps/desktop/windowManagers/bspwm/anotherFiles/eww/scripts/menu/good.sh)";
					color = "${fg}";
					font_size = 25;
					font_family = "${font}";
					halign = "center";
					valign = "center";
					position = "0, -15";
				}

				{
				  monitor = "${monitor}";
					text = "cmd[update:1000] date '+%H:%M'";
					color = "${fg}";
					font_size = 35;
					halign = "center";
					valign = "center";
					position = "0, 40";
					font_family = "${font}";
				}

				{
					monitor = "${monitor}";
					text = "cmd[update:1000] echo $(~/nix/homeManager/apps/desktop/windowManagers/bspwm/anotherFiles/eww/scripts/bar/music.sh)";
					color = "${fg}";
					font_size = 18;
					halign = "center";
					valign = "bottom";
					position = "0, 25";
					font_family = "${font}";
				}
			];
		};
	};
}
