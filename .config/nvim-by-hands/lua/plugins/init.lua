local vim_plugins_ok, vim_plugins_not_ok = pcall(vim.pack.add, {
    "https://github.com/pustota-theme/pustota.nvim", 
    "https://github.com/nvim-treesitter/nvim-treesitter",
}, {
    load = true,
})

if not vim_plugins_ok then
  vim.notify(vim_plugins_not_ok, vim.log.levels.ERROR)
end


vim.cmd.colorscheme("pustota")
