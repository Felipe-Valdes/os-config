{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    ./modules/users/default.nix
    ./modules/core/default.nix
    ./modules/gui/default.nix
    ./modules/environment/default.nix
    ./modules/services/default.nix
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.11";
}
