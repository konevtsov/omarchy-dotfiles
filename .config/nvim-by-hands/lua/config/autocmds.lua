local group = vim.api.nvim_create_augroup("user_config", {
    clear = true,
})

-- Remove Kitty's configured padding only while Neovim is using that window.
local kitty_window_id = vim.env.KITTY_WINDOW_ID
local function set_kitty_padding(value)
    if not kitty_window_id or vim.fn.executable("kitty") ~= 1 then
        return
    end

    vim.fn.system({
        "kitty",
        "@",
        "set-spacing",
        "--match",
        "id:" .. kitty_window_id,
        "padding=" .. value,
    })
end

vim.api.nvim_create_autocmd("VimEnter", {
    group = group,
    callback = function()
        set_kitty_padding("0")
    end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
    group = group,
    callback = function()
        set_kitty_padding("default")
    end,
})

-- Highlight copied text
vim.api.nvim_create_autocmd("TextYankPost", {
    group = group,
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Comeback to last position in file
vim.api.nvim_create_autocmd("BufReadPost", {
    group = group,
    callback = function(args)
        local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
        local line_count = vim.api.nvim_buf_line_count(args.buf)

        if mark[1] > 0 and mark[1] <= line_count then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})
