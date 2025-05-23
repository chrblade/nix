{ pkgs, ... }: {
	services.dunst = {
		enable = true;
		package = pkgs.dunst;
		settings = {
			global = {
				monitor = 0;
				follow = "mouse";
				width = 280;
				height = "(0, 250)";
				origin = "top-center";
				offset = "(0, 55)";
				scale = 0;
				notification_limit = 25;
				frame_width = 0;
				frame_color = "#ebdbb2";

				font = "JetBrainsMono Regular 10";
				line_height = 0;
				markup = "full";
				format = "<b>%s</b>\n%b";
				alignment = "left";
				vertical_alignment = "center";
				show_age_threshold = 60;
				ellipsize = "middle";
				ignore_newline = "no";
				stack_duplicates = true;
				hide_duplicate_count = false;
				show_indicators = "yes";

				enable_recursive_icon_lookup = true;
				history_length = 20;

				browser = "${pkgs.chromium}/bin/chromium";
				always_run_script = true;
				title = "Dunst";
				class = "Dunst";
				corner_radius = 12;

				mouse_left_click = "close_current";
		 	  mouse_middle_click = "do_action";
			  mouse_right_click = "do_action";
			};
			ugrency_low = {
				background = "#282828";
				foreground = "#ebdbb2";
				timeout = 10;
			};
			ugrency_normal = {
				background = "#282828";
				foreground = "#ebdbb2";
				timeout = 10;
			};
			ugrency_critical = {
				background = "#282828";
				foreground = "#ffffff";
				timeout = 0;
			};
		};
	};
}
