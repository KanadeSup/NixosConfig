{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    # Essential fonts for website
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];
}
