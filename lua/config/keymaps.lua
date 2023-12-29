local mapkey = require("util.keymapper").mapkey

-- Directory Navigation
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>t", "NvimTreeToggle", "n")

-- Pane Navigation
mapkey("C-h", "<C-w>h", "n") -- Navigate Left
mapkey("C-j", "<C-w>j", "n") -- Navigate Down
mapkey("C-k", "<C-w>k", "n") -- Navigate Up
mapkey("C-l", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally

-- Git
mapkey("<leader>gb", "Gitsigns toggle_current_line_blame", "n")
mapkey("<leader>gB", "Gitsigns blame_line", "n")

local api = vim.api

-- Comments
api.nvim_set_keymap("n", "<C-Bslash>", "gcc", { noremap = false }) -- Comment Normal
api.nvim_set_keymap("v", "<C-Bslash>", "gcc", { noremap = false }) -- Comment Normal
