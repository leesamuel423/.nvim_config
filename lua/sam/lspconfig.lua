return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      
      -- List of servers to setup
      local servers = {
        -- Python
        "pyright",        -- Python language server
        "ruff_lsp",       -- Python linter

        -- Java
        "jdtls",          -- Java language server

        -- JavaScript/TypeScript
        "tsserver",       -- TypeScript server
        "eslint",         -- JavaScript linter

        -- CSS
        "cssls",          -- CSS language server
        "tailwindcss",    -- Tailwind CSS support

        -- HTML
        "html",           -- HTML language server

        -- JSON
        "jsonls",         -- JSON language server

        -- Lua
        "lua_ls",         -- Lua language server

        -- Shell scripting
        "bashls",         -- Bash language server

        -- YAML
        "yamlls",         -- YAML language server

        -- Additional useful servers
        "emmet_ls",       -- Emmet support for HTML/CSS
        "dockerls",       -- Docker language server
        "sqlls",          -- SQL language server
      }

      -- Setup all servers
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end

      -- Additional settings for specific servers if needed
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

    end,
  },
}
