return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n","<leader>gp",":Gitsigns preview_hunk_inline<CR>",{ desc = "ver los cambios previos de git" })
      vim.keymap.set("n", "[c", ":Gitsigns prev_hunk<CR>", { desc = "Ir al anterior cambio"})
      vim.keymap.set("n", "]c", ":Gitsigns next_hunk<CR>", { desc = "Ir al siguiente cambio"})
    end,
  },
}
