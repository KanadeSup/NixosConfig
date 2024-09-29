{ ... }:

{	
  services.libinput = {
    enable = true;
    touchpad = {
      accelSpeed = "0.4";
      tappingDragLock = false;
      naturalScrolling = true;
    };
  };
}
