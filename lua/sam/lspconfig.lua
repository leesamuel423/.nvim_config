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
        -- C++
        "clangd",         -- C++ language server
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
        "emmet_language_server",       -- Emmet support for HTML/CSS
        "dockerls",       -- Docker language server
        "sqlls",          -- SQL language server
        "denols",         -- Deno language server
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
      local nvim_lsp = require('lspconfig')
      nvim_lsp.denols.setup {
        on_attach = on_attach,
        root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
      }

      nvim_lsp.tsserver.setup {
        on_attach = on_attach,
        root_dir = nvim_lsp.util.root_pattern("package.json"),
        single_file_support = false
      }
      -- autoformat
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end
          if client.supports_method('textDocument/formatting') then
            -- Format the current buffer on save
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end
            })
          end
        end,
      })
    end,
  },
}
