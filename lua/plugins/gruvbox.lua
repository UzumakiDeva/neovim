return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000, -- Load early
	config = function()
		require("gruvbox").setup({
			contrast = "hard", -- Options: "soft", "medium", "hard"
			transparent_mode = false,
			palette_overrides = {
				bg = "#fbf1c7",
				-- fg = "#3c3836",
			},
		})
		vim.o.background = "light"
		vim.cmd("colorscheme gruvbox")
	end,
}
