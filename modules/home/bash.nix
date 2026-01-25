{ config, pkgs, ... }:

{
    programs.bash = {
      enable = true;
      shellAliases = {
      gentoo = "echo its emerugu time baby";
     };

     initExtra =  ''
     export PS1='\[\e[38;5;201;1;7;53m\]\u\[\e[0m\] \H \w \@'
     '';
   };
}   