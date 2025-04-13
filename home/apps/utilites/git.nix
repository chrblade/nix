{ config, ... }: {
	programs.git = {
		enable = true;
		userName = "chronoblade";
		userEmail = "sophr.temin@ro.ru";
	};
}
