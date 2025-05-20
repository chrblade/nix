{ pkgs, ... }: 
	let
		icon = "WhiteSur-icons";
	in {
	home.packages = [ 
	pkgs.dconf 
	pkgs.glib
	];
	gtk = {
		enable = true;
		font = {
			size = 10;
			name = "Inter Medium";
		};
		gtk3 = {
			extraConfig = {
				gtk-button-images = 0;
				gtk-menu-images = 0;
				gtk-decoration-layout = "";
				gtk-application-prefer-dark-theme = 1;
				button-layout = "";
			};
		};
		gtk4 = {
			extraConfig = { 
				button-layout = ""; 
				gtk-decoration-layout = "";
			};
		};
		iconTheme = {
			name = "${icon}";
			package = pkgs.whitesur-icon-theme;
		};
		cursorTheme = {
			name = "WhiteSur-cursor";
			package = pkgs.whitesur-cursors;
		};
		theme = {
			name = "Adwaita-dark";
			package = pkgs.gnome-themes-extra;
		};
	};
}
