-- kanagawa.nvim
return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			compile = true,
			terminal_colors = true,
		})
	end,
}
