-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.g.mapleader = " "

local keymap = vim.keymap

-- GENERAL KEYMAPS

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" }) -- use jk to exit insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" }) -- nh to clear search highlights
keymap.set("n", "<leader><CR>", ":so ~.config/nvim/init.lua<CR>", { noremap = true, silent = true }) -- source init.lua file
keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true }) -- copy to clipboard
keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move lines down
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move lines up
keymap.set("i", "<C-c>", "<Esc>") -- set <C-c> to be <Esc>
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- PYTHON KEYMAPS
keymap.set("i", '"""', '""""""<Left><Left><Left><CR><CR><Up><End>', { noremap = true, silent = true }) -- mapping for triple in python comments
keymap.set("i", "'''", "''''''<Left><Left><Left>", { noremap = true, silent = true }) -- mapping for triple single quotes for python
