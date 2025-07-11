{ pkgs, ... }:

{
   services.flatpak.enable = true;
   xdg.portal = { 
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      config.common.default = "gtk";
   };
   virtualisation.docker.enable = true;
   programs.firejail.enable = true;
}
