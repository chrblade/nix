{ pkgs, config, ... }: {
	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland;
		#package = pkgs.rofi;
		# Я НЕНАВИЖУ ТОГО КТО ДЛЯ РОФИ ПИСАЛ ЭТОТ ПРИНИМАЮЩИЙ КОНФИГ
	};
}

