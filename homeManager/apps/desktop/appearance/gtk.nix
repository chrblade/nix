{ pkgs, ... }: 
	let
		theme = "${pkgs.gruvbox-gtk-theme}/share/themes/Gruvbox-Dark";
		theme-name = "catppuccin-frappe-blue-standard";
		icon = "Papirus-Dark";
	in {
	home.packages = [ 
	pkgs.dconf 
	pkgs.glib
	pkgs.gruvbox-kvantum pkgs.qt6ct #перенести потом в qt.nix
	];
	gtk = {
		enable = true;
		font = {
			size = 10;
			name = "JetBrains Mono Medium";
		};
		gtk3 = {
			extraCss = "${theme}/gtk-3.0/gtk-dark.css";
			extraConfig = {
				gtk-button-images = 0;
				gtk-menu-images = 0;
				gtk-decoration-layout = "";
				gtk-application-prefer-dark-theme = 1;
				button-layout = "";
			};
		};
		gtk4 = {
			extraCss = "${theme}/gtk-4.0/gtk-dark.css";
			extraConfig = { 
				button-layout = ""; 
				gtk-decoration-layout = "";
			};
		};
		iconTheme = {
			name = "${icon}";
			package = pkgs.catppuccin-papirus-folders;
		};
		#cursorTheme = {
		#	name = "cursor1"; #https://ko-fi.com/s/a273b3ca95
		#};
		theme = {
			name = "${theme-name}";
			package = pkgs.catppuccin-gtk;
		};
	};
}
