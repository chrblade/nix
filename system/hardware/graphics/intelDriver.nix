{ pkgs, config, lib, ... }: {
	hardware = {
		intel-gpu-tools.enable = true;
		cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
		opengl = {
			enable = true;
			extraPackages = with pkgs; [ 
			vpl-gpu-rt 
			intel-media-driver
			intel-vaapi-driver
			vaapi-intel-hybrid
			];
		};
	};
	systemd.services.gpu = {
		enable = true;
		wantedBy = [ "multi-user.target" ];
	  serviceConfig = {
      Description = "gpu service";
     	Type = "simple";
    	ExecStart = "${pkgs.intel-gpu-tools}/bin/intel_gpu_frequency -s 400";
    };
	};
}
