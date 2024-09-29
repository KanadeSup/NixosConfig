{ ... }:

{
  xresources = {
    properties = {
      "Xcursor.theme" = "Bibata-Modern-Ice";
      "Xcursor.size" = 30;
      "Xft.dpi" = 125;
    };
    path = ".config/x11/xresources";
  };

  home.file.".config/x11/xinitrc".text = ''
    xrdb -merge ~/.config/x11/xresources
    sxhkd &
    exec bspwm
  '';

  # This will affect sytemd environment variable
  systemd.user.settings.Manager.DefaultEnvironment = {
    DISPLAY = ":0";
    XINITRC=".config/x11/xinitrc";
    XAUTHORITY=".config/x11/xauthority";
    GIT_ASKPASS=""; # Prevent calling git ask pass during git authentication
  };
}
