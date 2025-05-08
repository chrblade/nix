{ pkgs, ... }: {
	home.packages = with pkgs; [
	  #Интернет
		firefox
		transmission_4-gtk
		filezilla
		cassette

		#Игры
		prismlauncher
		heroic
		
		winetricks
		wineWowPackages.stable

		#Рисовалка/медиа
		krita
		obs-studio
		vlc
		droidcam

		#ПРоги стола
		nemo
		eog
		file-roller

		#IDE
    netbeans

		#Заметки
		obsidian
      
		#Утилиты
		playerctl
    pavucontrol
		grim
		onefetch
		dconf
		mpv
		gowall

	];
}
