{ config, pkgs, ... }:

{
  imports = [
    /home/vasili/dotfiles/hyprland.nix
  ];

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
    ".config/hypr/hyprpaper.conf" = {
      source = config.lib.file.mkOutOfStoreSymlink "/home/vasili/dotfiles/config/hypr/hyprpaper.conf";
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
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
      updateh = "home-manager switch --impure";
      full-update = "sudo nixos-rebuild switch && home-manager switch --impure";
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
