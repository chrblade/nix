{ pkgs, ... }: {
  programs.eww = {
    enable = true;
    package = pkgs.eww;
    enableZshIntegration = true;
    configDir = "/home/chronoblade/nixConfigurations/homeManagerConfigurations/applicationsConfigurations/desktopEnvironment/windowManagers/bspwm/anotherConfigurations/eww";
  };
}
