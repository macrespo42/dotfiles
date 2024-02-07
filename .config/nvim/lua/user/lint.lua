local lint = require('lint')

lint.linters_by_ft = {
  python = { 'flake8' },
  -- javascript = { 'eslint' },
  -- typescript = { 'eslint' },
  -- typescriptreact = { 'eslint' },
  -- javascriptreact = { 'eslint' },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
