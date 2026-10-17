vim.lsp.config("basedpyright", {
    cmd = { "basedpyright-langserver", "--stdio" },
    filetypes = { "python" },

    root_markers = {
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        ".git",
    },
})

vim.lsp.enable("basedpyright")

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
    desc = "Go to definition",
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {
    desc = "Hover documentation",
})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
    desc = "Rename symbol",
})

vim.keymap.set("n", "gr", vim.lsp.buf.references, {
    desc = "References",
})

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
    desc = "Show diagnostic",
})

vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({ count = -1 })
end, {
    desc = "Previous diagnostic",
})

vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({ count = 1 })
end, {
    desc = "Next diagnostic",
})
