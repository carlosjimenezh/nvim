local M = {}

--config mapeos
function M.setup()
  -- modo normal
  vim.keymap.set("n", "<leader>q", ":q<CR>", {silent = true, noremap = true})
  vim.keymap.set("n", "<leader>w", ":w<CR>", {silent = true, noremap = true})

  --modo insertar 
  vim.keymap.set("i", "jj", "<Esc>", {silent = true, noremap = true})

  --modo visual
  --vim.keymap.set("v", "<leader>y", "", {noremap = true})

  --modo terminal
  --vim.keymap.set("n", "<leader>w", ":w<CR>", {silent = true, noremap = true})
end 

return M
