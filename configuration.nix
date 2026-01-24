{ config, pkgs, ... }:

{
  imports = [ /etc/nixos/hardware-configuration.nix ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "Nix46"; # Define your hostname.
  networking.networkmanager.enable = true;
  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.displayManager.ly.enable = true;

  users.users.thiago = {
    isNormalUser = true;
   description = "Thiago";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
   	git fastfetch home-manager
   ];
  };

  nixpkgs.config.allowUnfree = true;

  #here be dragons? sim. muito
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  environment.systemPackages = with pkgs; [
 
	 firefox rxvt-unicode bear texinfo autoconf
         libxml2 ncurses5 ncurses ncurses6 jansson
	 llvmPackages_20.clang-unwrapped git wget
 	 llvmPackages_20.clang-tools libgccjit 
	 libgcc gnumake42 emacs

  ];
    
   programs.mtr.enable = true;
   programs.sway.enable = true; 
   programs.gnupg.agent = {
     enable = true;
     enableSSHSupport = true;
   };

 
   services.openssh.enable = true;
   services.pipewire.enable = true;
   

# Apaga recursos desnecessarios 
 nix.gc = { 
	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 7d";
};

# Atualiza automaticamente (preguica) 
 system.autoUpgrade = {
	enable = true;
};

  system.stateVersion = "25.11"; # Did you read the comment?

}
