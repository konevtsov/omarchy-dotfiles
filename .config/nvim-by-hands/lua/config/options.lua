local opt = vim.opt

-- Номера строк
opt.number = true
opt.relativenumber = true

-- Отступы
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Поиск
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.fillchars:append({ eob = " " })

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Undo
opt.undofile = true

-- Мышь
opt.mouse = "a"

vim.g.have_nerd_font = true
