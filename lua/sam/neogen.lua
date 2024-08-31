return {
  {
    "danymat/neogen",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "L3MON4D3/LuaSnip",
    },
    event = "VeryLazy",
    keys = {
      {
        "<leader>cc",
        function()
          require("neogen").generate {}
        end,
        desc = "Neogen Comment",
      },
      -- Add navigation keybindings
      {
        "<C-]>",
        function()
          local ls = require("luasnip")
          if ls.expand_or_jumpable() then
            ls.expand_or_jump()
          end
        end,
        mode = {"i", "s"},
        desc = "Jump to next snippet field",
      },
      {
        "<C-[>",
        function()
          local ls = require("luasnip")
          if ls.jumpable(-1) then
            ls.jump(-1)
          end
        end,
        mode = {"i", "s"},
        desc = "Jump to previous snippet field",
      },
    },
    opts = {
      snippet_engine = "luasnip",
      enabled = true,
      languages = {
        lua = {
          template = {
            annotation_convention = "ldoc" -- or "emmylua"
          }
        },
        python = {
          template = {
            annotation_convention = "google_docstrings" -- or "numpydoc", "reST"
          }
        },
        -- Add more language-specific configurations as needed
      },
    },
    config = function(_, opts)
      require("neogen").setup(opts)
    end,
  },
}
