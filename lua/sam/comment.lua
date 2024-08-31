local M = {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  keys = {
    { "<leader>/", mode = { "n", "v" } },
  },
}

function M.config()
  local comment = require("Comment")
  
  vim.g.skip_ts_context_commentstring_module = true

  require("ts_context_commentstring").setup {
    enable_autocmd = false,
  }

  comment.setup {
    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    -- You can add more configuration options here if needed
  }

  -- Set up the keymaps
  local api = require("Comment.api")
  vim.keymap.set("n", "<leader>/", api.toggle.linewise.current, { desc = "Toggle comment" })
  vim.keymap.set("v", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", { desc = "Toggle comment" })
end

return M
