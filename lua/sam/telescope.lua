return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "ivy",
          },
        },
        -- extensions = {
        --   ["ui-select"] = {
        --     require("telescope.themes").get_dropdown({}),
        --   },
        -- },

      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
      vim.keymap.set("n", "<space>fh", builtin.help_tags)
      vim.keymap.set("n", "<space>fd", builtin.find_files)
      vim.keymap.set("n", "<space>en", function()
        builtin.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)

      -- require("telescope").load_extension("ui-select")
    end,
  },
}
