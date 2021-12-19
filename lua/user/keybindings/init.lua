vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- For moving between different splits
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Map jk or kj to escape in insert mode
map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- improve indentation
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

-- Move between buffers
map('n', '<TAB>', ':bnext<cr>', {noremap = true, silent = true})
map('n', '<S-TAB>', ':bprevious<cr>', {noremap = true, silent = true})
