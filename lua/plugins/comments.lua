return {
  "numToStr/Comment.nvim",
  opts = {},
  config = function()
    require("Comment").setup()
    vim.keymap.set("n", "<Leader>cc", "gcc", { remap = true, desc = "Toggles the current line using linewise comment" })
  end,
}
