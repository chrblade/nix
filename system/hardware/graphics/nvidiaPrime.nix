{ ... }: {
  hardware.nvidia.prime = {
		sync.enable = false;
		offload = {
			enable = true;
			enableOffloadCmd = true;
		};
	  intelBusId = "PCI:0:2:0";
	  nvidiaBusId = "PCI:1:0:0";
  };
}
