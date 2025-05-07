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
		bc

		#Основ пакеты
    micro 
    wget
    git
    bash

		#Кодеки
		intel-vaapi-driver
		intel-media-driver
		vaapi-intel-hybrid
		nvidia-vaapi-driver
	];
}
