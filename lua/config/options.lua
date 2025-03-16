vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.background = "dark"

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"

vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 5


-- vim.opt.updatetime = 100
-- vim.opt.timeoutlen = 500

-- configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = false

vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" }

-- previsdfew substitutions live, as you type!
vim.opt.inccommand = "split"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.termguicolors = true
