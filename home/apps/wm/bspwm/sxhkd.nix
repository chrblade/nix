{ pkgs, ... }: {
	services.sxhkd = {
		enable = true;
		package = pkgs.sxhkd;
		keybindings = 
		  let 
			  mod = "super";
			in {
			"alt + space"													= "rofi -show drun -config /home/chronoblade/nix/home/apps/wm/bspwm/rofi/rofi.rasi";
			"${mod} + e"													= "pkill -USR1 -x sxhkd";
			"${mod} + shift + {q,r}"						  = "bspc {quit, wm -r}";
			"${mod} + ctrl + r"										= "eww open reboot-dialog";
			"${mod} + ctrl + p"										= "eww open off-dialog";
			"${mod} + ctrl + c"										= "eww open screenshot";
			"${mod} + {t,shift + t,s,f}"					= "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";
			"${mod} + alt + {Left,Down,Up,Right}" = "bspc node -p {west,south,north,east}";
			"${mod} + alt + space"								= "bspc node -p cancel";
			"${mod} + {_,shift + }{1-6}"					= "bspc {desktop -f,node -d} '^{1-6}'";
			"${mod} + {_,shift + }c}"							= "bspc node -{c}";
			"alt + l"															= "eww open lock-dialog";
			"alt + g"															= "eww close bar";
			"alt + m"															= "eww open bar";
		};
	};
}
