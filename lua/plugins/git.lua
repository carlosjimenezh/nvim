return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set(
        "n",
        "<leader>gp",
        ":Gitsigns preview_hunk_inline<CR>",
        { desc = "ver los cambios previos de git" }
      )
    end,
  },
}
