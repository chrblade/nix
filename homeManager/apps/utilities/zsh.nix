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
			flake = "NH_FLAKE='/home/chronoblade/nix'";
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
			  	fg = "#232634"; #282828
		  		red = "#e78284"; #cc241d
		  		green = "#a6d189"; #98971a
		  		yellow = "#e5c890";
		  	  blue = "#8caaee"; 
		  		orange = "#ef9f76";
		  		aqua = "#99d1db";
					purple = "#babbf1";
					gray = "#b5bfe2";
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
			export QT_QPA_PLATFORMTHEME="qt6ct"
		'';
	};
}
