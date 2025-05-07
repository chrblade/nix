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
    pamixer
    jq
    pyradio
    cava
		playerctl
    pavucontrol
		grim
		onefetch
		dconf
		mpv
		gowall

		catppuccin-kvantum
		catppuccin-papirus-folders
		colloid-icon-theme
	];
}
