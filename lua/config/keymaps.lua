-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Alt and j/k でカレント行を移動する
-- Normal mode
vim.keymap.set("n", "<A-j>", "<Cmd>move .+1<CR>==")
vim.keymap.set("n", "<A-k>", "<Cmd>move .-2<CR>==")

-- Visual mode

-- Insert mode

-- インサートモードでjjでエスケープ
vim.keymap.set("i", "jj", "<Esc>")
-- インサートモードでjkでエスケープして保存
vim.keymap.set("i", "jk", "<Esc>:w<CR>")
