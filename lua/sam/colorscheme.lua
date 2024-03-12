local M = {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  opts = {}, 
}

function M.config()
  vim.cmd.colorscheme "solarized-osaka"
end

return M
