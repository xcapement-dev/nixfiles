{ config, pkgs, ... }:

{
  home.username = "tom";
  home.homeDirectory = "/home/tom";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    
    gcc
    cmake
    rustup
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # bash settings
  programs.bash = {
    enable = true;
  };
  
  # ghostty settings
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "synthwave";
      font-size = 16;
      keybind = [
        # "ctrl+h=goto_split:left"
        # "ctrl+l=goto_split:right"
      ]; 
    };
  };

  # nushell configuration
  programs.nushell = {
    enable = true;
  };

  # enable and configure esh
  programs.zsh = {
    enable = true;
  };
  # zellij settings
  programs.zellij = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
  };

  # lazygit settings
  programs.lazygit = {
    enable = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
 #   plugins = with pkgs.vimPlugins; [
 #     nvim-lspconfig
 #     nvim-treesitter.withAllGrammars
 #     plenary-nvim
 #     gruvbox-material
 #     mini-nvim
 #     LazyVim
 #   ];
  };

  programs.eza.enable = true;
  programs.yazi.enable = true;

}
