{ ... }: {
	imports = [
		./locale.nix
		./network.nix
		./security.nix

		./hardware/disko.nix
		./hardware/kernel.nix
		./hardware/boot/grub.nix
		./hardware/boot/plymouth.nix
		./hardware/graphics/graphicsSettings.nix
		./hardware/graphics/intelDriver.nix
		./hardware/graphics/nvidiaDriver.nix
		./hardware/graphics/nvidiaPrime.nix

		./nix/nixpkgs.nix
		./nix/settings.nix

		./services/openssh.nix
		./services/xserver.nix
		./services/scripts/units.nix

		./userConfigs/users.nix
		./userConfigs/autoLogin.nix

		./utilities/virtualisation.nix
		./utilities/packages/defaultPackages.nix
		./utilities/packages/fontPackages.nix
		./utilities/programs/adb.nix
		./utilities/programs/nh.nix
		./utilities/programs/steam.nix
		./utilities/programs/zsh.nix
	];
}
