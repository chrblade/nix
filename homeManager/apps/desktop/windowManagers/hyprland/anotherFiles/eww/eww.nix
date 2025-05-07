{ pkgs, ... }: {
  programs.eww = {
    enable = true;
    package = pkgs.eww;
    enableZshIntegration = true;
    configDir = "/home/chronoblade/nix/homeManager/apps/desktop/windowManagers/hyprland/anotherFiles/eww";
  };
}
