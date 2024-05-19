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
    doas
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
     EDITOR = "nvim";
	 CHROME_PATH = "/nix/store/0w31z7daj9w7qyir3plmnzvsr3vswr7w-user-environment/bin/google-chrome-stable";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
