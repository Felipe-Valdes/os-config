{ config, pkgs, ... }:

{
  home.username = "fvaldes";
  home.homeDirectory = "/home/fvaldes";

  home.file."Documents/Proyectos/.keep".text = "";
  home.file."Pictures/Wallpapers/.keep".text = "";

  home.file.".config/i3/config".source = ../gui/configs/i3.conf;
  home.file.".config/i3status/config".source = ../gui/configs/i3status.conf;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    interactiveShellInit = ''
      eval "$(${pkgs.starship}/bin/starship init zsh)"
      eval "$(${pkgs.zoxide}/bin/zoxide init zsh)"
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$character";
      character = {
        success_symbol = "[λ](bold green)";
        error_symbol = "[λ](bold red)";
      };
    };
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    configure = {
      packages.myVimPackage = with pkgs.vimPlugins; {
        start = [ pkgs.vimPlugins.nvim-tree-lua pkgs.vimPlugins.nvim-web-devicons pkgs.vimPlugins.tokyonight-nvim ];
      };
      customRC = ''
        set number
        set norelativenumber
        set termguicolors
        set mouse=a
        colorscheme tokyonight-night
        nnoremap <C-n> :NvimTreeToggle<CR>
        lua << EOF
          require("nvim-web-devicons").setup()
          require("nvim-tree").setup({ actions = { open_file = { quit_on_open = false } } })
        EOF
      '';
    };
  };

  programs.alacritty = {
    enable = true;
    settings = {
      window.padding = { x = 10; y = 10; };
      font = {
        normal = { family = "JetBrainsMono Nerd Font"; style = "Regular"; };
        size = 11;
      };
      colors.primary = { background = "#1a1b26"; foreground = "#c0caf5"; };
      cursor.style = { shape = "Block"; blinking = "Never"; };
    };
  };

  programs.zoxide.enable = true;
  programs.home-manager.enable = true;
  home.stateVersion = "25.11";
}
