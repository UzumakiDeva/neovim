return {
	"tamago324/lir.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("lir.actions")
		local mark_actions = require "lir.mark.actions"
		local clipboard_actions = require "lir.clipboard.actions"
		require("lir").setup({
			float_border = "rounded",
			float_winblend = 0,
			float_padding = 0.5,
			float_width = 0.8,
			float_height = 0.8,
			show_hidden = true,
			auto_resize_height = true,
			auto_resize_width = true,
			preview = {
				winblend = 0,
				border = "rounded",
				padding = 0.5,
				width = 0.8,
				height = 0.8,
				horizontal = "left",
				vertical = "down",
			},
			mappings = {
				["<CR>"] = actions.edit,        -- Open file/folder
				["q"] = actions.quit,           -- Quit lir.nvim
				["<BS>"] = actions.up,             -- Go up one level
				["K"] = actions.mkdir,          -- Create directory
				["N"] = actions.newfile,        -- Create file
				["D"] = actions.delete,         -- Delete file/folder
				["R"] = actions.rename,         -- Rename file/folder
				["Y"] = clipboard_actions.copy, -- Copy file/folder
				["X"] = clipboard_actions.cut,  -- Cut file/folder
				["P"] = clipboard_actions.paste,-- Paste file/folder
				["."] = actions.toggle_show_hidden, -- Toggle hidden files
			}
		})
		vim.api.nvim_set_keymap("n", "<leader>e", ":lua require('lir.float').toggle(vim.fn.getcwd())<CR>", { noremap = true, silent = true })
	end,
}
