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
	  copilot-vim

      cmp_luasnip
      cmp-nvim-lsp

      luasnip
      friendly-snippets


      lualine-nvim
      nvim-web-devicons
	  vim-commentary

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

      {
        plugin = (nvim-treesitter.withPlugins (p: [
          p.tree-sitter-nix
          p.tree-sitter-vim
          p.tree-sitter-bash
          p.tree-sitter-python
          p.tree-sitter-json
	  p.tree-sitter-cpp
          p.tree-sitter-css
          p.tree-sitter-html
          p.tree-sitter-javascript
          p.tree-sitter-markdown
          p.tree-sitter-svelte
          p.tree-sitter-nim
        ]));
	type = "lua";
        config = builtins.readFile(./treesitter.lua);
      }

    ];

    
    extraLuaConfig = builtins.readFile(./init.lua);
  };

}

