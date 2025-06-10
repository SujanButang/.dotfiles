-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<esc>", { desc = "Exit insert mode." })

map("x", "<M-j>", ":m '>+1<CR>gv=gv") -- move code block down
map("x", "<M-k>", ":m '<-2<CR>gv=gv") -- move code block up

map({ "n", "x" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard." }) -- copy to system clipboard
map({ "n", "x" }, "<leader>p", [["+p]], { desc = "Paste from system clipboard." }) -- paste from system clipboard
