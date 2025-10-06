-- Short alias
local map = vim.keymap.set

-- Quickly leave insert
map('i', 'jk', '<ESC>', { silent = true, desc = 'Escape insert' })

-- Clear search highlights
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Diagnostics quickfix list
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Diagnostics to [Q]uickfix' })

-- Easier split navigation
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Focus left split' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Focus right split' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Focus lower split' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Focus upper split' })

-- Exit terminal mode more easily
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
