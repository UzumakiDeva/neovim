-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	enabled = true,
	keys = {
		{ "<leader>\\", ":Neotree toggle<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			hijack_netrw = true,
			follow_current_file = true,
			use_libuv_file_watcher = true,
			window = {
				width = 30,
				mappings = {
					["<leader>\\"] = "close_window",
				},
			},
		},
		enable_git_status = true,
		default_component_configs = {
			container = {
				enable_character_fade = true,
			},
			git_status = {
				symbols = {
					added = "👶",
					deleted = "",
					modified = "",
					renamed = " ",
					untracked = " ",
					ignored = " ",
					unstaged = "🤷",
					staged = "🤵",
					conflict = " ",
				},
			},
		}	
	},
}
