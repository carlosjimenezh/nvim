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
vim.keymap.set("n", "<leader>e", ":lua vim.diagnostic.setqflist()<CR>", { desc = "Mostrar errores" })
vim.keymap.set("i", "jj", "<ESC>", { desc = "Salir de insertar" })
vim.keymap.set("n", "<leader>x", ":bd<CR>", { desc = "quitar el buffer actual" })
-- hacer un comando para meverse arriba abajo rapidamenteq
vim.keymap.set("n", "T", ":terminal<CR>", { desc = "Abrir terminal" })
vim.api.nvim_set_keymap("t", "<Leader><ESC>", "<C-\\><C-n>", { noremap = true })
