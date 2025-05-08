{ ... }: {
	services.getty.autologinUser = "chronoblade";
#	environment.loginShellInit = ''
#		[[ "$(tty)" == /dev/tty1 ]] && startx
#	'';
}
