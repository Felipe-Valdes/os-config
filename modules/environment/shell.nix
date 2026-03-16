{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    interactiveShellInit = ''
      eval "$(${pkgs.starship}/bin/starship init zsh)"
      eval "$(${pkgs.zoxide}/bin/zoxide init zsh)"
    '';

    shellAliases = {};
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

  programs.zoxide.enable = true;
}
