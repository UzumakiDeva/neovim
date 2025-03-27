return {
	'chentoast/marks.nvim',
	config = function()
		require'marks'.setup {
			default_mappings = true,
			signs = true,  -- Show marks in the sign column
			mappings = {}
		}

	end
}
