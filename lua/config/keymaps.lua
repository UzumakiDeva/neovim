-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- switch between buffers
vim.keymap.set("n", "<S-h>", "<cmd>bp<CR>", { desc = "move to prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bn<CR>", { desc = "move to next buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "close buffer" })

-- quit neovim
vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", { desc = "quit neovim" })

vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true }) -- Copy to system clipboard
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true }) -- Copy selection to system clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true }) -- Paste from system clipboard
vim.keymap.set("x", "p", '"_dP') -- Paste without overwriting clipboard

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true }) -- Exit insert mode quickly
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true }) -- Keep selection when indenting left
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true }) -- Keep selection when indenting right
vim.keymap.set("n", "x", '"_x', { noremap = true, silent = true }) -- Delete without copying to register
vim.keymap.set("n", "<leader>d", '"_d', { noremap = true, silent = true }) -- Cut without copying

vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true }) -- Keep search results centered
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true }) -- Keep search results centered

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true }) -- Move line down
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true }) -- Move line up
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true }) -- Move selection down
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true }) -- Move selection up
vim.keymap.set("n", "<leader>R", ":source %<CR>", { noremap = true, silent = true }) -- Reloadrcurrent config
