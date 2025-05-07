{ pkgs, config, ... }: {
	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland-unwrapped;
		#package = pkgs.rofi;
		# Я НЕНАВИЖУ ТОГО КТО ДЛЯ РОФИ ПИСАЛ ЭТОТ ПРИНИМАЮЩИЙ КОНФИГ
	};
}

