{ config, pkgs, ... }:


{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
	  getPythonEnv = "cp ~/.config/nixos/shell/python/shell.nix .";
	  getNodeEnv = "cp ~/.config/nixos/shell/web/shell.nix .";
	  getCplusEnv= "cp ~/.config/nixos/shell/cpp/shell.nix .";
	  gotoNixConfig = "cd ~/.config/nixos/";
    };
	bashrcExtra = ''source ~/.config/nixos/env.sh'';
  };

}
