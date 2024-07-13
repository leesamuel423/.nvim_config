local M = {
  "echasnovski/mini.nvim",
  version = '*'
}

function M.config()
  local spec_treesitter = require('mini.ai').gen_spec.treesitter

  -- Load mini.nvim modules with their default configurations
  require('mini.indentscope').setup()
  require('mini.cursorword').setup()
  require('mini.comment').setup()
  require('mini.pairs').setup()
  require('mini.statusline').setup()
  require('mini.surround').setup()
  require('mini.trailspace').setup()
  require('mini.ai').setup({
    custom_textobjects = {
      F = spec_treesitter({ a = '@function.outer', i = '@function.inner'}),
      o = spec_treesitter({
        a = { '@conditional.outer', '@loop.outer' },
        i = { '@conditional.inner', '@loop.inner' }
      })
    }
  })
end

return M
