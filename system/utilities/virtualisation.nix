{ pkgs, ... }: {
	virtualisation = {
		docker = {
			enable = true;
			package = pkgs.docker;
			enableNvidia = true;
			storageDriver = "overlay2";
			logDriver = "json-file";
			enableOnBoot = true;
		};
		virtualbox.host = {
			enable = true;
			package = pkgs.virtualbox;
			enableExtensionPack = true;
			enableKvm = true;
			addNetworkInterface = false;
		};
	};
}
