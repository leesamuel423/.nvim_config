-- SOLARIZED OSAKA --
-- local M = {
--   "craftzdog/solarized-osaka.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {}, 
-- }

-- GRUVBOX --
-- local M = {
--   "ellisonleao/gruvbox.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {}
-- }

-- NO CLOWN FIESTA --
local M = {
  "aktersnurra/no-clown-fiesta.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
--   vim.cmd.colorscheme "solarized-osaka"
--   vim.cmd.colorscheme "gruvbox"
  require("no-clown-fiesta").setup({
    transparent=true

  })
  vim.cmd.colorscheme "no-clown-fiesta"
end


return M
