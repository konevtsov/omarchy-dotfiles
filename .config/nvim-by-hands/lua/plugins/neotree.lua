local neotree = require("neo-tree")

neotree.setup({
	close_if_last_window = true,

	enable_git_status = true,
	enable_diagnostics = true,

	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = true,
		},
	},

	window = {
		position = "left",
		width = 35,
	},
})

local map = vim.keymap.set

map("n", "<leader>e", "<cmd>Neotree toggle filesystem<cr>", {
	desc = "Toggle file explorer",
})
