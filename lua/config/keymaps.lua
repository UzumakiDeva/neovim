-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

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
vim.keymap.set("n", "<leader>D", ":bufdo if bufname('%') != bufname('') | bwipeout | endif<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>q", "<cmd>qa<CR>", { desc = "quit neovim" })
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "save file" })
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "delete buffer" })
vim.keymap.set("v", "p", '"_dP') -- Paste without overwriting clipboard

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

vim.keymap.set("n", "<leader>o", "o<Esc>", { noremap = true, silent = true }) -- Save file
vim.keymap.set("n", "<leader>O", "O<Esc>", { noremap = true, silent = true }) -- Save file

vim.keymap.set("n", "<leader>bD", ":lua DeleteBuffers()<cr>", { noremap = true, silent = true }) -- Save file

vim.keymap.set("n","J", "10j", { noremap = true, silent = true }) -- Scroll down 10 line
vim.keymap.set("n","K", "10k", { noremap = true, silent = true }) -- Scroll up 10 line
