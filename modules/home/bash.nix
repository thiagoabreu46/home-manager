{ config, pkgs, ... }:

{
    programs.bash = {
      enable = true;
      shellAliases = {
      gentoo = "emerge time baby";
      
     };
   };
}   