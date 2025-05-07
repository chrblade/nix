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
				serviceConfig = {
					ExecStart = ''setxkbmap -layout us,ru -variant qwerty -option grp:alt_shift_toggle && dunstify "смена раскладки"'';
				};
			};
		};
	};
}
