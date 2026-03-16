{ pkgs, ... }:

{
  imports = [
    ./shell.nix
    ./neovim.nix
  ];

  environment.systemPackages = with pkgs; [
    vim wget git firefox tree fastfetch bat eza fzf
  ];
}
