{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		#Безделушки
		fastfetch
		btop

		#Для никсы
		nix-prefetch-git
		home-manager
		nh

		#Сис утилиты
		pciutils
		glxinfo
		killall
		inxi
		tree

		#Основ пакеты
    micro 
    wget
    git
    bash
	];
	fonts = {
		packages = with pkgs; [
			cantarell-fonts
			noto-fonts
			noto-fonts-cjk-sans
			noto-fonts-emoji
			fira-code-symbols
			fira-code
			dejavu_fonts
			jetbrains-mono
			nerd-fonts.symbols-only
			nerd-fonts.jetbrains-mono
		];
		fontconfig.defaultFonts.emoji = [ "Noto Color Emoji" ];
	};
}
