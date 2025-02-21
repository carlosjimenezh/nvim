return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				--lua
				null_ls.builtins.formatting.stylua,
				--JS
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint"),
				--php
				null_ls.builtins.diagnostics.phpstan,
				null_ls.builtins.formatting.phpcsfixer.with({
					command = "./vendor/bin/php-cs-fixer",
					args = { "fix", "--stdin", "--format=json", "--rules=@PSR12" },
				}),
			},
		})
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "pretty formating" })
	end,
}
