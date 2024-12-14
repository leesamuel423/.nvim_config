local M = {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
}

-- function M.config()
--   local spec_treesitter = require("mini.ai").gen_spec.treesitter
--
--   -- Load mini.nvim modules with their default configurations
--   require("mini.cursorword").setup()
--   require("mini.comment").setup()
--   require("mini.pairs").setup()
--   require("mini.statusline").setup()
--   require("mini.surround").setup()
-- end

return M
