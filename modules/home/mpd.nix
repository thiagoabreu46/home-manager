{ config, pkgs, ... }:

{
  services.mpd = {
    enable = true;
    network.startWhenNeeded = true;
    dataDir = "/home/thiago/.config/mpd";
    musicDirectory = "/home/thiago/Music";
    dbFile = "/home/thiago/.config/mpd/db/mpd.db";
    network.listenAddress = "any";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "nix-audio"
	server "127.0.0.1"
      }
      '';
  };
  
  programs.ncmpcpp = {
      enable = true;
      mpdMusicDir = "/home/thiago/Music";
     }; 
}