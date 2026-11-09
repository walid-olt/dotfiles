return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
      { "<leader>ft", "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
      { "<leader>vt", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Toggle vertical terminal" },
      { "<leader>ht", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle horizontal terminal" },
    },
    opts = {
      open_mapping = [[<leader>t]],
      direction = "horizontal",
      size = 20,
      shade_filetypes = {},
      shade_terminals = true,
      persist_size = true,
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = { border = "Normal", background = "Normal" },
      },
    },
  },
}
