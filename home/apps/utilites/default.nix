{ ... }: {
	imports = [
		# Кли утилиты
		./neovim.nix
		./zsh.nix
		./git.nix
		./fastfetch.nix

		# Гуи утилиты
		./flameshot.nix
		./kitty.nix
	];
}
