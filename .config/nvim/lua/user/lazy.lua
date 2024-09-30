local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
  -- Styles
  "nvim-tree/nvim-web-devicons",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function()
      vim.cmd("colorscheme catppuccin-latte")
    end,
  },

  -- LSP
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("mason").setup()
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip").filetype_extend("lua", { "luadoc" })
      require('luasnip').filetype_extend("python", { "pydoc" })
      require("luasnip").filetype_extend("typescript", { "tsdoc" })
      require("luasnip").filetype_extend("javascript", { "jsdoc" })
    end
  },
  -- END OF LSP

  -- Formatter
  {
    'stevearc/conform.nvim',
    opts = {},
  },

  -- Linter
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "lint"
    end
  },

  -- Diagnostics
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    --build = ":TSUpdate"
  },


  -- Navigations
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { { "nvim-lua/plenary.nvim" } }
  },

  {
    "theprimeagen/harpoon",
  },

  -- Git
  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  "lewis6991/gitsigns.nvim",


  -- mini thats really matters
  {
    "echasnovski/mini.indentscope",
    version = "*",
    config = function()
      require("mini.indentscope").setup()
    end
  },

  {
    "echasnovski/mini.surround",
    version = "*",
    config = function()
      require("mini.surround").setup()
    end
  },

  -- comment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  },

  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
  },
})
