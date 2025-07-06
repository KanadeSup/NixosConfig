{
   nix.settings.experimental-features = [ "nix-command" "flakes" ];
   nix.channel.enable = false;
   nixpkgs.config.allowUnfree = true;

   system.stateVersion = "24.05";
}
