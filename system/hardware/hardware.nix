{ config, lib, pkgs, ... }: {
  hardware = {
		intel-gpu-tools.enable = true;
		cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
		pulseaudio = {
			enable = true;
			support32Bit = true;
		};
    graphics = { 
		  enable = true; 
			enable32Bit = true;
		};
    nvidia = {
      modesetting.enable = true;
      powerManagement = {
        enable = false;
        finegrained = false;
      };
			prime = {
				sync.enable = false;
				offload = {
					enable = true;
					enableOffloadCmd = true;
				};
				intelBusId = "PCI:0:2:0";
				nvidiaBusId = "PCI:1:0:0";
			};
      open = false;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}
