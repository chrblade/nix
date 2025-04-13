{ ... }: {
	imports = [
		#Пакеты, вкл программы
		./apps/apps.nix
		./apps/packages.nix

		#Че то низкоуровневое
		#Ну и бутлоадер
		./hardware/boot.nix
		./hardware/filesystems.nix
		./hardware/hardware.nix

		#Основное прям про никсу
		./nix/system.nix
		./nix/nixpkgs.nix

		#Сервисы(иксы и тд), юниты
		./services/services.nix
		./services/units.nix

		#Другое
		./etc/locale.nix
		./etc/networking.nix

		#Юзерская хуйня
		./user/security.nix
		./user/user.nix
	];
}
