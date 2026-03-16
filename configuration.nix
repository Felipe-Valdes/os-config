{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/core/default.nix
    ./modules/hardware/default.nix
    ./modules/services/default.nix
    ./modules/users/default.nix
    ./modules/gui/default.nix
    ./modules/environment/default.nix
  ];

  system.stateVersion = "25.11";
}
