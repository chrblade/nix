	{ config, lib, ... }: {
	nixpkgs = {
		config = {
			allowUnfree = true;
			allowUnfreePredicate = true;
		};
		hostPlatform = lib.mkDefault "x86_64-linux";
	};
}
