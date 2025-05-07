{ config, ... }: {
	programs.git = {
		enable = true;
		userName = "chronoblade";
		userEmail = "chronoblade@noreply.codeberg.org";
	};
}
