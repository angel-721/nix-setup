{ config, pkgs, ... }:


{
  programs.slstatus= {
    enable = true;
	src = /home/angel/.config/slstatus;
  };

}

