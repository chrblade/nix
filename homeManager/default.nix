{ ... }: {
	imports = [
		./homeSettings.nix
		./apps/packages.nix

		./apps/utilities/fastfetch.nix
		./apps/utilities/flameshot.nix
		./apps/utilities/git.nix
		./apps/utilities/go.nix
		./apps/utilities/kitty.nix
		./apps/utilities/neovim.nix
		./apps/utilities/zsh.nix

		./apps/desktop/appearance/gtk.nix
		./apps/desktop/appearance/xdg.nix

	  #./apps/desktop/windowManagers/hyprland/hyprland.nix
		#./apps/desktop/windowManagers/hyprland/hyprlandEcoSystem/hypridle.nix
		#./apps/desktop/windowManagers/hyprland/hyprlandEcoSystem/hyprlock.nix
		#./apps/desktop/windowManagers/hyprland/hyprlandEcoSystem/hyprpaper.nix
		#./apps/desktop/windowManagers/hyprland/anotherFiles/eww/eww.nix
		#./apps/desktop/windowManagers/hyprland/anotherFiles/rofi/rofi.nix

		./apps/desktop/windowManagers/bspwm/bspwm.nix
		./apps/desktop/windowManagers/bspwm/anotherFiles/sxhkd.nix
		./apps/desktop/windowManagers/bspwm/anotherFiles/picom.nix
		./apps/desktop/windowManagers/bspwm/anotherFiles/dunst.nix
		#./apps/desktop/windowManagers/bspwm/anotherFiles/eww/eww.nix
		./apps/desktop/windowManagers/bspwm/anotherFiles/rofi/rofi.nix
	];
}
