return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			indent = {
				char = "", -- cambia el carácter de la línea guía
			},
			scope = {
				enabled = true,
        show_start = true,
        show_end = true,
			},
		})
	end,
}
