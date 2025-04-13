{ config, pkgs, ... }: {
	xdg = {
		enable = true;
		portal = {
			enable = true;
			extraPortals = [ pkgs.xdg-desktop-portal-wlr ];
			config = {
				common.default = "gtk";
			};
		};

		cacheHome = builtins.toPath "${config.home.homeDirectory}/.cache";
    configHome = builtins.toPath "${config.home.homeDirectory}/.config";
    dataHome = builtins.toPath "${config.home.homeDirectory}/.local/share";
    stateHome = builtins.toPath "${config.home.homeDirectory}/.local/state";

    systemDirs = {
      config = [ "/etc/xdg" ];
      data = [ "/usr/share" "/usr/local/share" ];
    };

    userDirs = {
      enable = true;
      createDirectories = true;

      desktop = builtins.toPath "${config.home.homeDirectory}/Desktop";
      documents = builtins.toPath "${config.home.homeDirectory}/Documents";
      download = builtins.toPath "${config.home.homeDirectory}/Downloads";
      pictures = builtins.toPath "${config.home.homeDirectory}/Pictures";
      videos = null;
			music = null;
      publicShare = null;
      templates = null;

      extraConfig = {
        XDG_GIT_DIR = "${config.home.homeDirectory}/Repositories";
      };
    };
	};
}
