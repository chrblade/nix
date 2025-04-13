{ config, pkgs, ... }: {
	boot = {
		kernelPackages = pkgs.linuxPackages_zen;
		kernelModules = [ "kvm-intel" ];
		kernelParams = [ "quiet" "splash" ];
		blacklistedKernelModules = [ "nouveau" ];
		extraModulePackages = with config.boot.kernelPackages; [ amneziawg ];
		consoleLogLevel = 3;
		initrd = {
			availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "uas" "sd_mod" "sdhci_pci" ];
			kernelModules = [ "i915" ];
			verbose = false;
		};
		loader = {
			timeout = 7;
			efi = {
				canTouchEfiVariables = true;
				efiSysMountPoint = "/boot";
			};
			grub = {
				efiSupport = true;
				device = "nodev";
			};
		};
		plymouth = {
			enable = true;
			theme = "bgrt";
		};
	};
}
