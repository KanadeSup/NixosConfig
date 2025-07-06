{ pkgs, ... }:

with pkgs; [
   bibata-cursors
   kitty
   unzip
   neovim
   sxhkd
   bat
   procs
   zoxide
   eza
   delta
   git
   duf
   dust
   ripgrep
   fd
   silver-searcher
   fzf
   tldr
   bottom
   nerd-fonts.fira-codels
   clang_19
   zellij

   ###### Language server protocol ######
   lua-language-server
   rust-analyzer
   # typescript
   # typescript-language-server
   # tailwindcss-language-server

   ###### Unfree packages ######
   code-cursor
   jetbrains.phpstorm
   postman
   navicat-premium
]
