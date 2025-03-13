return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000, -- Load early
	enabled = false,
	config = function()
		require("gruvbox").setup({
			contrast = "hard", -- Options: "soft", "medium", "hard"
			transparent_mode = false,
			palette_overrides = {
				bg = "#fbf1c7",
				fg = "#3c3836",
			},
		})
		vim.o.background = "dark"
		vim.cmd("colorscheme gruvbox")

		vim.cmd([[
		highlight @string guifg=#3fba45
		]])

		vim.cmd [[
		  highlight LspReferenceRead guifg=#ed51e8 " Soft blue for read
		]]
		local folder_bg = {
		  ["frontend"] = "dark",
		}

		local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":t") -- Get current folder name

		if folder_bg[cwd] then
		  vim.o.background = folder_bg[cwd]
		  vim.cmd("colorscheme gruvbox") -- Reapply colorscheme
		end
	end,
}
