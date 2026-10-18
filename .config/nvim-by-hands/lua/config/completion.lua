local cmp = require("blink.cmp")

cmp.build():pwait()

cmp.setup({
    keymap = {
        preset = "enter",

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    completion = {
        list = {
            selection = {
                preselect = false,
            },
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 300,
        },
    },
    sources = {
        default = {
            "lsp",
            "path",
            "snippets",
            "buffer",
        },
    },
    fuzzy = {
        implementation = "rust",
    },
})
