-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })

local function map_yank_to_clipboard()
  vim.keymap.set("n", "Y", '"+yy<Cmd>lua vim.notify("Copied line to system clipboard")<CR>', {
    desc = "Yank line to system clipboard",
    noremap = true,
  })
  vim.keymap.set("x", "Y", '"+y<Cmd>lua vim.notify("Copied selection to system clipboard")<CR>', {
    desc = "Yank selection to system clipboard",
    noremap = true,
  })
end

map_yank_to_clipboard()
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  once = true,
  callback = function()
    -- LazyVim installs its default keymaps on VeryLazy, so set this one after
    -- those handlers have finished.
    vim.schedule(map_yank_to_clipboard)
  end,
})
