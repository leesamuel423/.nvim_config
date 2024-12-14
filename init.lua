require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true

-- Keymaps to quickly execute and use nvim in live setting --
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua <CR>")
vim.keymap.set("v", "<space>x", ":.lua <CR>")

-- LSP Keymapping
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)
vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help)

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
