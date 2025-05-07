{ config, pkgs, ... }: {
	hardware.nvidia = {
		modesetting.enable = true;
		powerManagement = {
			enable = false;
			finegrained = false;
		};
		open = false; #Чтоб ты сдох хуанг блядь, такая вот проблема реализовать пропретарную хуйню для опен драйверов, цель опен драйверов же открыть код? Вот и код будет открытым.
		nvidiaSettings = true;
		package = config.boot.kernelPackages.nvidiaPackages.stable;
	};
}
