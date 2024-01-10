-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = true -- relative line number
opt.number = true -- show absolute line number on cursor line
opt.scrolloff = 8 -- show 8 lines above/below cursor line
opt.tabstop = 2 -- tabstop
opt.shiftwidth = 2 -- shiftwidth
opt.expandtab = true -- expandtab
opt.autoindent = true -- autoindent

opt.wrap = false -- don't wrap lines

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- ignore case when searching lowercase only

opt.cursorline = true -- highlight current line

opt.termguicolors = true -- enable 24-bit RGB colors
opt.background = "dark" -- dark background
opt.signcolumn = "yes" -- always show sign column
opt.colorcolumn = "80" -- add line at 80 columns

opt.backspace = "indent,eol,start" -- allow backspacing over everything in insert mode
opt.splitright = true -- vertical split to the right
opt.splitbelow = true -- horizontal split to the bottom

opt.swapfile = false -- disable swapfile
opt.updatetime = 50 -- faster completion
