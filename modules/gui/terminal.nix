{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ alacritty ];

  environment.etc."alacritty/alacritty.toml".text = ''
    [window]
    padding = { x = 10, y = 10 }
    [font]
    normal = { family = "JetBrainsMono Nerd Font", style = "Regular" }
    size = 11
    [colors.primary]
    background = "#1a1b26"
    foreground = "#c0caf5"
    [cursor]
    style = { shape = "Block", blinking = "Never" }
  '';
}
