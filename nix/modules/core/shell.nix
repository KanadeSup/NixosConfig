{ pkgs, ... }:

{
   programs.zsh = {
      enable = true;
      shellInit = ''
         export ZDOTDIR=~/.config/zsh
      '';
      histFile="$HOME/.config/zsh/.zsh_history";
   };
   users.defaultUserShell = pkgs.zsh;
}
