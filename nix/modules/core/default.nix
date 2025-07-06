{ pkgs, ... }:

{
   imports = [
      ./configuration.nix
      ./system.nix

      ./fonts.nix
      ./xserver.nix
      ./sandbox.nix
      ./security.nix
      ./services.nix
      ./shell.nix
      ./xdg.nix
      ./appimage.nix
   ];	

}
