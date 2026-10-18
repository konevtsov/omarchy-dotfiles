require("snacks").setup({
	dashboard = {
		enabled = true,
		preset = {
			header = [[
 ███╗   ██╗██╗   ██╗██╗███╗   ███╗
 ████╗  ██║██║   ██║██║████╗ ████║
 ██╔██╗ ██║██║   ██║██║██╔████╔██║
 ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
 ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
 ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			keys = {
				{ icon = " ", key = "f", desc = "Find files", action = ":lua Snacks.picker.files()" },
				{ icon = "󰱼 ", key = "g", desc = "Find text", action = ":lua Snacks.picker.grep()" },
				{ icon = " ", key = "e", desc = "File explorer", action = ":Neotree toggle filesystem" },
				{ icon = "󰅚 ", key = "q", desc = "Quit Neovim", action = ":qa" },
			},
		},
		sections = {
			{ section = "header", padding = 2 },
			{ section = "keys", gap = 1, padding = 1 },
		},
	},
	picker = {
		enabled = true,
	},
})

local map = vim.keymap.set

map("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find files" })

map("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Find text" })

map("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Find buffers" })

map("n", "<leader>fr", function()
	Snacks.picker.recent()
end, { desc = "Recent files" })
