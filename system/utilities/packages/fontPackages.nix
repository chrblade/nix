{ pkgs, ... }: {
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
			inter
			inter-nerdfont
			cascadia-code
		];
		fontconfig.defaultFonts.emoji = [ "Noto Color Emoji" ];
	};
}
