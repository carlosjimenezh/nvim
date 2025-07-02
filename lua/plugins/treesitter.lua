return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "css", "javascript", "json", "html", "php", "sql", "typescript" },
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesitter-context").setup({
				enable = true, -- activado por defecto
				max_lines = 3, -- máximo de líneas del contexto sticky
				multiline_threshold = 20, -- mínimo de líneas del bloque para activarse
				trim_scope = "outer", -- cómo recortar contexto si excede el max_lines
				mode = "cursor", -- usa la posición del cursor, no del scroll
				separator = nil, -- puedes usar un separador visual: "---"
			})
		end,
	},
}
