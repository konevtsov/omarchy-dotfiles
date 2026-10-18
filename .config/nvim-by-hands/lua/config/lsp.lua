require("mason").setup()

vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

--------------------------------------------------
----------   LSP Servers settings   --------------
--------------------------------------------------

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "Snacks" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

--------------------------------------------------

require("mason-lspconfig").setup({
	ensure_installed = {
		"basedpyright",
		"lua_ls",
	},

	automatic_enable = true,
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

local group = vim.api.nvim_create_augroup("user_lsp", {
	clear = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = group,

	callback = function(args)
		local function map(lhs, rhs, desc)
			vim.keymap.set("n", lhs, rhs, {
				buffer = args.buf,
				desc = desc,
			})
		end

		map("gd", vim.lsp.buf.definition, "Go to definition")
		map("K", vim.lsp.buf.hover, "Hover documentation")
		map("gr", vim.lsp.buf.references, "Find references")
		map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
		map("<leader>d", vim.diagnostic.open_float, "Show diagnostic")
		map("[d", function()
			vim.diagnostic.jump({ count = -1 })
		end, "Previous diagnostic")
		map("]d", function()
			vim.diagnostic.jump({ count = 1 })
		end, "Next diagnostic")
	end,
})
