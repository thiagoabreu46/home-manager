{ config, pkgs, ... }:
{
  writeShellApplication,
  wireplumber,
  gawk,
  # any other dependencies from pkgs go here
  # all this will be injected by callPackage
}:
writeShellApplication {
  name = "../scripts/volume.sh";
  runtimeInputs = [ wireplumber gawk ];
  # ...
}