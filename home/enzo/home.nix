{ config, pkgs, ... }:

{
  home.username = "enzo";
  home.homeDirectory = "/home/enzo";
  programs.zsh.enable = true;

  home.file = {
    ".config/hypr/hyprland.conf".source = ../dotfiles/hypr/hyprland.conf;
    ".config/waybar/config".source = ../dotfiles/waybar/config;
    ".config/waybar/style.css".source = ../dotfiles/waybar/style.css;
  };

  home.stateVersion = "25.05";
}
