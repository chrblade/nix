{ pkgs, ... }: {
	programs = {
		gamemode.enable = true;
		steam = {
			enable = true;
			gamescopeSession.enable = true;
			extraCompatPackages = with pkgs; [ proton-ge-bin ];
		};
	};
}
