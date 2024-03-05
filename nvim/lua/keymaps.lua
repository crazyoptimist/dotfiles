-- Remap comma as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Navigate vim windows better
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

-- Shortcut for :noh
vim.keymap.set('n', '<leader>h', ':noh<CR>')

-- Navicate through buffers
vim.keymap.set('n', '<leader>n', ':bnext<CR>')
vim.keymap.set('n', '<leader>p', ':bprevious<CR>')
vim.keymap.set('n', '<leader>d', ':bd<CR>')

-- Exit from terminal-mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
