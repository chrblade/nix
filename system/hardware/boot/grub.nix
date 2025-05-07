{ config, ... }: {
	boot.loader = {
		timeout = 7;
		grub = {
			efiSupport = true;
			efiInstallAsRemovable = true;
			device = "nodev";
		};
	};
}
