vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- GENERAL KEYMAPS

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" }) -- use jj to exit insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" }) -- nh to clear search highlights
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move lines down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move lines up
keymap.set("i", "<C-c>", "<Esc>") -- set <C-c> to be <Esc>
keymap.set("n", "<C-a>", "gg<S-v>G") -- select all

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- PYTHON KEYMAPS
keymap.set("i", '"""', '""""""<Left><Left><Left><CR><CR><Up><End>', { noremap = true, silent = true }) -- mapping for triple in python comments
keymap.set("i", "'''", "''''''<Left><Left><Left>", { noremap = true, silent = true }) -- mapping for triple single quotes for python

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>i", function()
  require("craftzdog.lsp").toggleInlayHints()
end)
