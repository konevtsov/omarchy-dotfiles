local wk = require("which-key")

wk.setup({
	preset = "modern",

	delay = 250,

	win = {
		border = "rounded",
	},
})

wk.add({
	{ "<leader>f", group = "Find", icon = "" },
	{ "<leader>c", group = "Code", icon = "󰅩" },
	{ "<leader>r", group = "Refactor", icon = "󰑕" },

	{ "<leader>h", group = "Git Hunks", icon = "" },
	{ "<leader>t", group = "Toggle", icon = "󰔡" },
})

vim.keymap.set("n", "<leader>?", function()
	wk.show({ global = false })
end, {
	desc = "Buffer local keymaps",
})
