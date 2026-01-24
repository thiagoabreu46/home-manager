{ lib, pkgs, ... }:
let username = "thiago"; in {
  home = {
       packages = with pkgs; [
       moc                waypaper
       bash		  swww
       rxvt-unicode       git-credential-manager
       dmenu              git
       firefox
       pulseaudioFull
       pavucontrol
       ];

       username = "thiago";
       homeDirectory = "/home/thiago/";
       stateVersion = "25.11";

       sessionVariables = {
       EDITOR = "emacs";
       };
    };

   programs.git = {
    extraConfig.credential.helper = "manager";
    extraConfig.credential."https://github.com".username = "thiagoabreu46";
    extraConfig.credential.credentialStore = "cache";
    enable = true;
  };
 
 }