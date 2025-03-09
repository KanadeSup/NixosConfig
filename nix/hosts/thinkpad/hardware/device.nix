{ ... }:

{	
   services.libinput = {
      enable = true;
      touchpad = {
         accelSpeed = "0.6";
         tappingDragLock = false;
         naturalScrolling = true;
      };
   };
}
