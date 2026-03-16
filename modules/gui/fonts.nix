{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    font-awesome dejavu_fonts nerd-fonts.jetbrains-mono noto-fonts noto-fonts-color-emoji
  ];
}
