{ pkgs, ... }: {
	services = {
		openssh = {
			enable = true;
			ports = [ 95 ];
			settings = {
      PasswordAuthentication = true;
			UseDns = true;
			AllowUsers = [ "chronoblade" ];
			PermitRootLogin = "yes";
			};
		};
	};
}
