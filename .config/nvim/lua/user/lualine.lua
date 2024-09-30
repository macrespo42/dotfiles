require("lualine").setup({
  options = { theme = "catppuccin-latte", component_separators = "|" },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { 'filename' },
    lualine_x = { "filetype" },
    lualine_z = { "location" },
  },
})
