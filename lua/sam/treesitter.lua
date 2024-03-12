local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "html", "javascript", "python", "java", "typescript", "tsx", "regex", "rust" },
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
