{ pkgs, ... }: {
  programs.eww = {
    enable = true;
    package = pkgs.eww;
    enableZshIntegration = true;
    configDir = "/home/chronoblade/nix/home/apps/wm/hyprland/eww";
  };
}
