{ config, pkgs, ... }:

{
  users.users.fvaldes = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };
}
