{ config, pkgs, inputs, ... }:

{
  imports = [
    ./modules/shell/sh.nix
    ./modules/nvim/nvim.nix
  ];

  home.username = "angel";
  home.homeDirectory = "/home/angel";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    lua
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
     EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}