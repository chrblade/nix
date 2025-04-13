{ ... }: {
	imports = [
		# Если будешь юзать бспвм,
		# То делай раскомент и делай комент хипрленда
		# ИНАЧЕ, СЛИЯНИЕ НАХУЙ 2 EWW
		#./bspwm/default.nix 
		./hyprland/default.nix
		./appearanceCfgs/default.nix
	];
}
