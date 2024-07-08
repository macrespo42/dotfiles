local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- file explorer
vim.keymap.set("n", "<leader>e", ":Ex<cr>", opts)
vim.keymap.set("n", "<leader>pv", ":Sex<cr>", opts)

-- visual mode fast lines managment
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- panes managment
vim.keymap.set("n", "<leader>vv", ":vsp<cr>", opts)
vim.keymap.set("n", "<leader>ss", ":sp<cr>", opts)

-- nice to have
vim.keymap.set("n", "<leader>w", ":w!<cr>", opts)
vim.keymap.set("n", "<leader>q", ":q!<cr>", opts)
vim.keymap.set("n", "<leader>x", ":x!<cr>", opts)

-- resize buffers
vim.keymap.set("n", "<C-l>", ":vertical resize +3<cr>", opts)
vim.keymap.set("n", "<C-h>", ":vertical resize -3<cr>", opts)
vim.keymap.set("n", "<C-j>", ":resize -3<cr>", opts)
vim.keymap.set("n", "<C-k>", ":resize +3<cr>", opts)

-- center cursor when moving blazingly fast
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Terminal mappings
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", opts)

-- fast edit
vim.keymap.set("x", "<leader>p", "\"_dP", opts)
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- disable arrow keys
vim.keymap.set("n", "<Left>", "", opts)
vim.keymap.set("n", "<Right>", "", opts)
vim.keymap.set("n", "<Up>", "", opts)
vim.keymap.set("n", "<Down>", "", opts)

--remap echap
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
