-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- window
vim.opt.wrap = true
vim.opt.splitright = true
vim.opt.splitbelow = true


-- Undo / backup / swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME" .. "/.vim/undodir")
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Generals
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
vim.opt.guicursor = ""
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "120"
vim.g.mapleader = " "
vim.opt.updatetime = 50

-- Providers
vim.g.python3_host_prog = '~/.pyenv/versions/3.12.1/bin/python'
