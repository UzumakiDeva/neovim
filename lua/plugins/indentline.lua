return {
	"nvimdev/indentmini.nvim",
	enabled = false,
	config = function()
		require("indentmini").setup({
			-- char = "│",
			-- show_trailing_blankline_indent = false,
			-- show_first_indent_level = true,
			-- space_char_blankline = " ",
			-- space_char_highlight = "⋅",
			-- filetype_exclude = {
			-- 	"help",
			-- 	"startify",
			-- 	"dashboard",
			-- 	"packer",
			-- 	"neogitstatus",
			-- 	"NvimTree",
			-- 	"Trouble",
			-- },
			-- buftype_exclude = {
			-- 	"terminal",
			-- },
			-- show_current_context = true,
			-- colorizer = nil,
		})
	end,
}
