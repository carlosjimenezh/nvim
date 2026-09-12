vim.g.mapleader = " "
vim.cmd("set relativenumber")
vim.cmd("set numberwidth=1")
vim.cmd("set expandtab")
vim.cmd("set cursorline")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamed")
vim.o.background = "dark"
vim.cmd("set number")
vim.cmd("set numberwidth=1")
vim.cmd("set clipboard=unnamed")
vim.cmd("set nowrap")
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Guardar" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Cerrar" })
-- vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.setqflist()<CR>", { desc = "Mostrar errores" })
vim.keymap.set("n", "<leader>e", function()
    vim.diagnostic.setloclist()
    vim.cmd("lopen")
end, {
    desc = "Mostrar errores del archivo",
})
vim.keymap.set("n", "<leader>gg", ":lua require('gitsigns').setqflist()<CR>", { desc = "Mostrar cambios git" })
vim.keymap.set("i", "jj", "<ESC>", { desc = "Salir de insertar" })
-- vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "quitar el buffer actual" })
vim.keymap.set("n", "<leader>x", function()
  -- Verificar si Neo-tree está abierto
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].filetype == "neo-tree" then
      vim.cmd("Neotree close")
      break
    end
  end
  -- Cerrar el buffer actual
  vim.cmd("bd")
end, {
  desc = "Cerrar Neo-tree y buffer actual"
})
-- hacer un comando para meverse arriba abajo rapidamenteq
vim.keymap.set("n", "T", ":terminal<CR>", { desc = "Abrir terminal" })
vim.api.nvim_set_keymap("t", "<Leader><ESC>", "<C-\\><C-n>", { noremap = true })
