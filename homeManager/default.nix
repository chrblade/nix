{ ... }: {
	imports = [
		./homeSettings.nix
		./apps/packages.nix

		./apps/utilities/fastfetch.nix
		./apps/utilities/git.nix
		./apps/utilities/neovim.nix
		./apps/utilities/zsh.nix

		./apps/xdg.nix
	];
}
