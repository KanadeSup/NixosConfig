{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellInit = ''
      export ZDOTDIR=~/.config/zsh
      export ZHISTFILE=~/.config/zsh/.zsh_history
    '';
    histFile="$HOME/.config/zsh/.histfile";
  };
  users.defaultUserShell = pkgs.zsh;
}
