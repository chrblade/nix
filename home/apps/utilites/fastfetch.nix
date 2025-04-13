{ pkgs, ... }: {
	programs.fastfetch = {
		enable = true;
		package = pkgs.fastfetch;
		settings = {
			logo.source = "nixos_small";
			display.separator = " :: ";
			modules = [
				{
					type = "os";
					key = "dis";
				}
				{
					type = "kernel";
					key = "krn";
				}
				{
					type = "uptime";
					key = "upt";
				}
				{
					type = "packages";
					key = "pks";
				}
				{
					type = "wm";
					key = "wdm";
				}
			];
		};
	};
}
