{ ... }:

{	
   services.libinput = {
      enable = true;
      touchpad = {
         accelSpeed = "0.5";
         tappingDragLock = false;
         naturalScrolling = true;
      };
   };
}
