local vim_plugins_ok, vim_plugins_not_ok = pcall(vim.pack.add, {
	-- Theme
	-- "https://github.com/pustota-theme/pustota.nvim",
	{
		src = "https://github.com/catppuccin/nvim",
		name = "catppuccin",
	},
	-- TreeSitter
	"https://github.com/nvim-treesitter/nvim-treesitter",

	-- LSP
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason-lspconfig.nvim",

	-- Completion engine
	"https://github.com/saghen/blink.lib",
	"https://github.com/saghen/blink.cmp",

	-- Formatters
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",

	-- Search
	"https://github.com/folke/snacks.nvim",
	"https://github.com/nvim-tree/nvim-web-devicons",
	-- Statusline
	"https://github.com/nvim-lualine/lualine.nvim",

	-- File explorer
	{
		src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		version = "162f9b953a692b559afe43e38d60afee81e8e79b",
	},
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/MunifTanjim/nui.nvim",

	-- Which key
	"https://github.com/folke/which-key.nvim",

	-- Git
	"https://github.com/lewis6991/gitsigns.nvim",
}, {
	load = true,
})

if not vim_plugins_ok then
	vim.notify(vim_plugins_not_ok, vim.log.levels.ERROR)
end

vim.cmd.colorscheme("catppuccin-nvim")
require("plugins.snacks")
require("plugins.neotree")
require("plugins.which-key")
require("plugins.gitsigns")
require("plugins.treesitter")
require("plugins.lualine")
