{ config, lib, ... }: {
	networking = {
		useDHCP = lib.mkDefault true;
		hostName = "nix-fox";
		networkmanager.enable = true;
	};
}
