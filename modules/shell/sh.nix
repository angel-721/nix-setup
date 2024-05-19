{ config, pkgs, ... }:


{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
	  getPythonEnv = "cp ~/.config/nixos/shell/python/shell.nix .";
    };
  };
}
