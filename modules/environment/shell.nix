{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    interactiveShellInit = ''
      eval "\"
      eval "\"
    '';

    shellAliases = {};
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "\\";
      character = {
        success_symbol = "[λ](bold green)";
        error_symbol = "[λ](bold red)";
      };
    };
  };

  programs.zoxide.enable = true;
}
