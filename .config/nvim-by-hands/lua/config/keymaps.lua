vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map("i", "jj", "<Esc>", { desc = "Escape insert mode" })

map("n", "<leader>w", "<cmd>write<cr>", {
    desc = "Save file",
})

map("n", "<leader>q", "<cmd>quit<cr>", {
    desc = "Quit",
})

map("n", "<Esc>", "<cmd>nohlsearch<cr>", {
    desc = "Clear search highlight",
})

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Yank settings through Shift
map("v", "Y", '"+y', { desc = "Copy selection to system clipboard" })
map("n", "Y", '"+y$', { desc = "Copy line to system clipboard" })

map("n", "P", '"+p', { desc = "Paste from system clipboard after" })
map("n", "<M-P>", '"+P', { desc = "Paste from system clipboard before" })

map("v", "P", '"+p', { desc = "Paste from system clipboard over selection" })
