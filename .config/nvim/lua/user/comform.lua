require("conform").setup({
  formatters_by_ft = {
    python = { "isort", "black" },
    javascript = { "prettier" },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    javascriptreact = { 'prettier' },
  },
  format_on_save = {
    timeout_ms = 10000,
    lsp_fallback = true,
  },
})
