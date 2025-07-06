{ ... }:

{
   networking = {
      hostName = "KanadeThinkpad";
      networkmanager.enable = true;
      extraHosts = ''
         127.0.0.1 localhost api.carbonix.localhost
         ::1       localhost
         127.0.1.1 KanadeThinkPad

      '';
   };
}
