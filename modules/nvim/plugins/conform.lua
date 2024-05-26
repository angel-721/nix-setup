require("conform").setup({
  formatters_by_ft = {
    python = { "ruff_organize_imports", "ruff_format", "ruff_fix" },
    javascript = { { "prettierd", "prettier" } },
    nix = {"alejandra "},
    cpp = {"clang-format"} ,
  },

  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
})