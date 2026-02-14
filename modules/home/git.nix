{ config, pkgs, ... }:

{

 programs.git = {
     enable = true;
     extraConfig = {
        user.name = "thiagoabreu46";
        user.email = "thiagoabreu293@gmail.com";
        core.editor = "emacs";
        credential.helper = "manager";
        credential."https://github.com".username = "thiagoabreu46";
        credential.credentialStore = "cache";    
       };
   };
}  
