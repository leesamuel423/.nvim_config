local M = {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  keys = {
    { "<s-m>", desc = "Harpoon mark file" },
    { "<TAB>", desc = "Harpoon menu" },
    { "<leader>h", desc = "Harpoon" },
  },
}

function M.config()
  local harpoon = require("harpoon")

  -- Set up harpoon
  harpoon:setup({})

  -- Custom function to add mark with notification
  local function add_mark()
    harpoon:list():append()
    vim.notify("󱡅 MARKED FILE", vim.log.levels.INFO, { title = "Harpoon" })
  end

  -- Set up keymaps
  vim.keymap.set("n", "<s-m>", add_mark, { desc = "Harpoon mark file" })
  vim.keymap.set("n", "<TAB>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })

  -- Navigation keymaps
  vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Harpoon 1" })
  vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Harpoon 2" })
  vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Harpoon 3" })
  vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Harpoon 4" })

  -- Extra navigation keymaps
  vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Harpoon prev" })
  vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Harpoon next" })

end

return M
