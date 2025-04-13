{ pkgs, ... }: {
	programs.kitty = {
		enable = true;
		package = pkgs.kitty;
		font = {
			size = 10;
			name = "JetBrainsMono NF";
		};
		settings = {
			cursor_shape = "beam";
			window_padding_width = 6;
		};
	  themeFile = "gruvbox-dark";
	};
}
