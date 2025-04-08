{ config, pkgs, ... }:

{
  home.username = "vasili";
  home.homeDirectory = "/home/vasili";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = [

  ];

  home.file = {
    ".config/nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/vasili/dotfiles/config/nvim/";
    };
    ".config/kitty" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/vasili/dotfiles/config/kitty/";
    };
    ".config/rofi" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/vasili/dotfiles/config/rofi";
    };
    ".config/tmux" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/vasili/dotfiles/config/tmux";
    };
    ".config/waybar" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/vasili/dotfiles/config/waybar";
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.git = {
    enable = true;
    userName = "vasili1310";
    userEmail = "huzeacostas1345@gmail.com";
    aliases = {
      pu = "push";
      co = "checkout";
      cm = "commit";
    };
  };

  gtk = {
    enable = true;
    theme.name = "Gruvbox-Material-Dark";
    cursorTheme.name = "Bibata-Modern-Classic";
    iconTheme.name = "Gruvbox-Plus-Dark";
  };

  xdg.mimeApps.defaultApplications = {
    "text/plain" = [ "neovide.desktop" ];
    "application/pdf" = [ "evince.desktop" ];
    "image/*" = [ "loupe.desktop" ];
    "video/*" = [ "vlc.desktop" ];
  };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -lha";
      update = "sudo nixos-rebuild switch";
      updateh = "home-manager switch";
      cl = "clear";
      v = "nvim";
    };
  };

  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [ ];
    theme = "robbyrussell";
    # theme = "agnoster";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
