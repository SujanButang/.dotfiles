-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.scrolloff = 15
opt.backup = false
opt.undofile = true
opt.swapfile = false
opt.undolevels = 10000

-- Case-insensitive searching UNLESS \C or capital in search
opt.smartcase = true
opt.ignorecase = true
opt.hlsearch = false

opt.timeout = true
opt.updatetime = 300
opt.timeoutlen = 300

opt.winborder = "rounded"

-- Better completion experience
opt.completeopt = "menuone,noselect"

vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "NONE" })
