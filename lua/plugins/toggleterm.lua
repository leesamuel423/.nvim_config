return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  opts = {
    execs = {
      { nil, "<M-1>", "Horizontal Terminal", "horizontal", 0.3 },
      { nil, "<M-2>", "Vertical Terminal", "vertical", 0.4 },
      { nil, "<M-3>", "Float Terminal", "float", nil },
    }
  }
}
