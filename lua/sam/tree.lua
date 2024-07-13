return {
  "nvim-tree/nvim-tree"",
  config = function()
    vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
}
