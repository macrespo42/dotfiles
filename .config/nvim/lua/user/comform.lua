require("conform").setup({
  formatters_by_ft = {
    python = { "ruff_format", "ruff_organize_imports" },
    javascript = { "prettier" },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    javascriptreact = { 'prettier' },
    go = { 'gofumpt' }
  },
  format_on_save = {
    timeout_ms = 10000,
    lsp_fallback = true,
  },
})
