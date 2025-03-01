return {
	"akinsho/toggleterm.nvim",
	opts = {
		size = 20,
		open_mapping = [[<C-\>]],
		direction = "float",
	},
	config = function()
		require("toggleterm").setup()

		-- Function to toggle LazyGit
		function Lazygit_toggle()
			local Terminal = require("toggleterm.terminal").Terminal
			local lazygit = Terminal:new({
				cmd = "lazygit",
				hidden = true,
				direction = "float",
			})
			lazygit:toggle()
		end

		vim.keymap.set("n", "<leader>lg", ":lua Lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}
