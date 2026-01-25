{ lib, pkgs, ... }:
let username = "thiago"; in {

  imports = [ ./modules/home/bash.nix ];
  
  home = {
       packages = with pkgs; [
       moc                waypaper                  mpv
       bash		  swww                      bat
       rxvt-unicode       git-credential-manager    htop
       dmenu              git                       discord
       firefox            rmpc
       pulseaudioFull     mpd
       pavucontrol        mpc
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