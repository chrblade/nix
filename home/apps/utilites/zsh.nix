{ pkgs, ... }: {
	programs.zsh = {
		enable = true;
		package = pkgs.zsh;
		plugins = [{
				name = "zsh-autosuggestions";
				src = pkgs.zsh-autosuggestions;
			}
			{
				name = "zsh-highlighting";
				src = pkgs.zsh-syntax-highlighting;
			}];
		shellAliases = 
		let 
			conf = "/home/chronoblade/nix/system/default.nix";
			args = "-- --impure -I";
			flake = "FLAKE='/home/chronoblade/nix'";
		in {
			"nhs" = "${flake} nh home switch ${args} ${conf}";
			"nhsu" = "${flake} nh home switch --update ${args} ${conf}";
			"nos" = "${flake} nh os switch ${args} ${conf}";
			"nosu" = "${flake} nh os switch --update ${args} ${conf}";
			"nca" = "${flake} nh clean all";
		};
		syntaxHighlighting = {
			enable = true;
			highlighters = [ "main" "brackets" "pattern" "regexp" "root" "line" ];
			styles = 
			 let 
			  	fg = "#282828";
		  		red = "#cc241d";
		  		green = "#98971a";
		  		yellow = "#79921";
		  	  blue = "#458588";
		  		orange = "#d65d0e";
		  		aqua = "#689d6a";
					purple = "#b16286";
					gray = "#a89984";
		  	in {
					command = "fg=${blue},bold";
					unknown-token = "fg=${red},bold";
					reserved-word = "fg=${blue},bold";
					alias = "fg=${aqua},bold";
					builtin = "fg=${aqua},bold";
					function = "fg=${fg},bold";
					commandseparator = "fg=${green},bold";
					path = "fg=${aqua},bold";
					path_pathseparator = "fg=${aqua},bold";
					globbing = "fg=${blue},bold";
					command-sustitution = "fg=${green},bold";
					single-hyphen-option = "fg=${green},bold";
					double-hyphen-option = "fg=${aqua},bold";
				  back-quoted-argument = "fg=${yellow},bold";
					single-quoted-argument = "fg=${yellow},bold";
					double-quoted-argument = "fg=${yellow},bold";
					redirection = "fg=${purple},bold";
					comment = "fg=${gray},bold";
					arg0 = "fg=${blue},bold";
					default = "fg=${blue},bold";
				};
		};
		initExtra = ''
			export PROMPT="%m %2~ %B::%b "
		'';
	};
}
