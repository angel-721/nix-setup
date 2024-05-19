{ config, pkgs, ... }:


{
  programs.bash = {
    enable = true;
    shellAliases = {
      sudo = "doas";
    };
  };

}
