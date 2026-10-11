-- Options are automatically loaded before lazy.nvim startup.
require("config.remote_clipboard").setup()

-- Keep normal deletes (for example `dd`) out of the system clipboard.
-- Use `"+y` when copying explicitly to the system clipboard.
vim.opt.clipboard = ""

vim.opt.relativenumber = true
vim.g.autoformat = false
