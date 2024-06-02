{ config, pkgs, ... }:


{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
	  CHROME_PATH="/nix/store/qikp6aziwfxgl5agwmbxf4d1zwnjxkx1-user-environment/bin/google-chrome-stable";
	  getpythonenv = "cp ~/.config/nixos/shell/python/shell.nix .";
	  getnodeenv = "cp ~/.config/nixos/shell/web/shell.nix .";
	  getcplusenv = "cp ~/.config/nixos/shell/cpp/shell.nix .";
	  gonix = "cd ~/.config/nixos/";
	  g = "google-chrome-stable";
	  n = "nix-shell";
	  v = "nvim";
	  r = "yazi";
    };
	bashrcExtra = ''source ~/.config/nixos/env.sh'';
  };

}
