{ pkgs, ... }: 
	let
		theme = "${pkgs.gruvbox-gtk-theme}/share/themes/Gruvbox-Dark";
		theme-name = "Gruvbox-Dark";
		icon = "Gruvbox-Plus-Dark";
		cursor = "cursor";
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
				gtk-application-prefer-dark-theme = 1;
				button-layout = "";
			};
		};
		gtk4 = {
			extraCss = "${theme}/gtk-4.0/gtk-dark.css";
			extraConfig = { buttom-layout = ""; };
		};
		iconTheme = {
			name = "${icon}";
			package = pkgs.gruvbox-plus-icons;
		};
		cursorTheme = {
			name = "${cursor}";
			package = pkgs.capitaine-cursors-themed;
		};
		theme = {
			name = "${theme-name}";
			package = pkgs.gruvbox-gtk-theme;
		};
	};
}
