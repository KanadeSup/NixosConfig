{ pkgs, ... }:

{
  services = {
    picom.enable = true;
    xserver = {
      enable = true;
      autoRepeatDelay = 290;
      autoRepeatInterval = 30;
      windowManager.bspwm.enable = true;
      displayManager.startx.enable = true;
      desktopManager.xterm.enable = false;
      excludePackages = [ pkgs.xterm ];
    };
  };
}
