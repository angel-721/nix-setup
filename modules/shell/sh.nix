{ config, pkgs, ... }:


{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
	  getpythonenv = "cp ~/.config/nixos/shell/python/shell.nix .";
	  getnodeenv = "cp ~/.config/nixos/shell/web/shell.nix .";
	  getcplusenv = "cp ~/.config/nixos/shell/cpp/shell.nix .";
	  gonix = "cd ~/.config/nixos/";

	  n = "nix-shell";
	  v = "nvim";
    };
	bashrcExtra = ''source ~/.config/nixos/env.sh'';
  };

}
