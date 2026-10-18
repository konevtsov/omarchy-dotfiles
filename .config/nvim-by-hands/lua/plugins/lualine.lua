require("lualine").setup({
	options = {
		theme = "auto",
		globalstatus = true,
		section_separators = "",
		component_separators = "│",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = { { "filename", path = 1, status = true } },
		lualine_x = { "diagnostics", "filetype" },
		lualine_y = { "encoding", "fileformat" },
		lualine_z = { "progress", "location" },
	},
})
