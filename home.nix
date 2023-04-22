{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "grace";
  home.homeDirectory = "/home/grace";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.vim = {
    enable = true;
    extraConfig = "
      set number
      set linebreak
      set incsearch
      set hls
      set nrformats=
      set tabstop=4
      set shiftwidth=4
      set softtabstop=4 expandtab
      set expandtab
      set autoindent
      set smartindent

      syntax enable
      colorscheme torte

      imap jj <Esc>
    ";
  };

  home.packages = with pkgs; [ htop ];
}
