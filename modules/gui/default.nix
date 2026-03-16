{ pkgs, ... }:

{
  imports = [ ./audio.nix ./fonts.nix ./terminal.nix ];

  services.xserver = {
    enable = true;
    xkb.layout = "us";
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [ rofi i3status ];
      configFile = ./configs/i3.conf;
    };
    displayManager.lightdm.enable = true;
  };

  environment.etc."i3status.conf".source = ./configs/i3status.conf;
  services.displayManager.defaultSession = "none+i3";
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [ thunar-archive-plugin thunar-volman ];
  qt.enable = true;
  qt.platformTheme = "gtk2";

  environment.systemPackages = with pkgs; [
    i3status nitrogen adwaita-icon-theme networkmanagerapplet pasystray pavucontrol rofi lightdm
  ];

  hardware.graphics.enable = true;
}
