{ pkgs, ... }: {
	systemd = {
		timers = {
			autoCommitTimer = {
				timerConfig = {
					onCalendar = "weekly";
					persistent = true;
					Unit = "autoCommit.service";
				};
			};
			setxkbmapTimer = {
				timerConfig = {
					onCalendar = "hourly";
					persistent = false;
					Unit = "setxkbmap.service";
				};
			};
		};
		services = {
			autoCommit = {
				wantedBy = [ "timers.target" ];
				path = [ pkgs.bash pkgs.git ];
				description = "autocommit nix config, to codeberg and github";
				script = ''/home/chronoblade/nix/system/services/scripts/autopush.sh'';
				serviceConfig = {
					WorkingDirectory = "/home/chronoblade";
					User = "chronoblade";
				};
			};
			setxkbmap = {
				wantedBy = [ "timers.target" ];
				description = "change layout"; #заебало в определенное время сбрасываться
				path = [ pkgs.xorg.setxkbmap pkgs.dunst ];
				script = ''/home/chronoblade/nix/system/services/scripts/setxkbmap.sh'';
				serviceConfig = {
					User = "chronoblade";
					WorkingDirectory = "/home/chronoblade";
					#ExecStart = ''${pkgs.setxkbmap}/bin/setxkbmap -layout us,ru -variant qwerty -option grp:alt_shift_toggle && ${pkgs.dunst}/bin/dunstify "смена раскладки"'';
				};
			};
		};
	};
}
