{ config, pkgs, modulesPath, ... }: {
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];
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
	};
}
