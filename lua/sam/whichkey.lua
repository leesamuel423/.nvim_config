local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    { 
      "<leader>?", 
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)"
    }
  }
}
return M