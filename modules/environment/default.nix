{ pkgs, ... }:

{
  imports = [
    ./shell.nix
  ];

  environment.systemPackages = with pkgs; [
    vim wget git firefox tree fastfetch bat eza fzf
  ];
}
