{ config, pkgs, ... }: {
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
