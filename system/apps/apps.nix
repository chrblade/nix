{ pkgs, ... }: {
	programs = {
		adb.enable = true;
		gamemode.enable = true;
		zsh.enable = true;
		nh = {
			enable = true;
			clean = {
				enable = true;
				dates = "weekly";
				extraArgs = "--keep-since 7d";
			};
		};
		steam = {
			enable = true;
      gamescopeSession.enable = true;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
		};
	};
}
