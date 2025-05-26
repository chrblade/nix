{ pkgs, ... }: {
	home.packages = with pkgs; [
	  #Интернет
		firefox
		transmission_4-gtk
		filezilla
		cassette
		telegram-desktop

		#Игры
		prismlauncher
		heroic
		superTux
		openttd
		
		winetricks
		wineWowPackages.stable

		#Рисовалка/медиа
		krita
		obs-studio
		vlc
		droidcam

		file-roller

		#Заметки
		obsidian
      
		#Утилиты
   		pavucontrol
		dconf
		mpv
		gowall

		whitesur-cursors
		gnomeExtensions.blur-my-shell
		gnomeExtensions.dash-to-dock
		gnome-tweaks

		kitty
		eog
		neovim-gtk
		adw-gtk3
		
		blender
		dino
		ferium
		xnee
		
		cabextract
		wimlib
		chntpw
		cdrtools
		aria2
		morewaita-icon-theme
		go
		blockbench
		powershell
		powershell-editor-services
	];
}
