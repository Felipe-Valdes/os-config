{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    configure = {
      packages.myVimPackage = with pkgs.vimPlugins; {
        start = [ nvim-tree-lua nvim-web-devicons tokyonight-nvim ];
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
}
