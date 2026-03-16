{ config, pkgs, ... }:

{
  services.openssh.enable = true;
  services.libinput.enable = true;
}
