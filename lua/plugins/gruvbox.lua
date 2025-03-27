return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000, -- Load early
	enabled = true,
	config = function()
		require("gruvbox").setup({
			contrast = "hard", -- Options: "soft", "medium", "hard"
			transparent_mode = false,
			palette_overrides = {
				bg = "#fbf1c7",
				fg = "#3c3836",
			},
		})
		-- vim.o.background = "dark"
		-- vim.cmd("colorscheme gruvbox")

		local folder_bg = {
		  ["frontend"] = "dark",
		}

		local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":t") -- Get current folder name

		if folder_bg[cwd] then
		  -- vim.o.background = folder_bg[cwd]
		  -- vim.cmd("colorscheme gruvbox") -- Reapply colorscheme
		end
	end,
}
