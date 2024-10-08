local lint = require('lint')

lint.linters_by_ft = {
  python = { 'ruff' },
  javascript = { 'eslint' },
  typescript = { 'eslint' },
}

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
  callback = function()
    local linter_available = vim.fn.executable('eslint') == 1
    if (vim.bo.filetype == 'javascript' or vim.bo.filetype == "typescript") and not linter_available then
      return
    end
    require("lint").try_lint()
  end,
})
