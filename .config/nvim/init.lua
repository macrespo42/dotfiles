require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
