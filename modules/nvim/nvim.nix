{ config, pkgs, ... }:


{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    defaultEditor = true;
    
    # Plugin dependencies
    extraPackages = with pkgs; [
      ripgrep
      nil # nix langserver
    ];

    plugins = with pkgs.vimPlugins; [
      telescope-nvim
      neodev-nvim
      telescope-fzf-native-nvim

      cmp_luasnip
      cmp-nvim-lsp

      luasnip
      friendly-snippets


      lualine-nvim
      nvim-web-devicons

      {
        plugin = nvim-lspconfig;
	type = "lua";
	config = builtins.readFile(./lsp.lua);
      }

      {
        plugin = nvim-cmp;
	type = "lua";
	config = builtins.readFile(./cmp.lua);
      }

    ];
  };

}

