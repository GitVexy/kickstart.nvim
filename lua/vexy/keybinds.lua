--  CUSTOM KEYMAPS AND SHIT
-- vim.keymap.set('', '', '')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Close file
vim.keymap.set('n', '<leader>Q', ':q<Enter>')

-- New keymap generator
vim.keymap.set('n', '<leader>NC', "i<Enter><Enter>vim.keymap.set('', '', '')<Enter><Esc>2ki-- New Command<Esc>j0f'a")

-- New line above
vim.keymap.set('n', '<M-k>', 'O<Esc>03x')

-- New line below
vim.keymap.set('n', '<M-j>', 'o<Esc>03x')

-- Turn off highlight after search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move comment to end of line beneath
vim.keymap.set('n', '<leader>Ac', '0d$jA <Esc>p0i<BS><Esc>0')

-- Move comment from end of line to above
vim.keymap.set('n', '<leader>AC', '$F-2hd$O<Esc>p0')

-- Move line up
vim.keymap.set('n', '<C-Up>', 'ddkP', { noremap = true, silent = true })

-- Move line down
vim.keymap.set('n', '<C-Down>', 'ddjP', { noremap = true, silent = true })

-- Launch / Toggle NeoTree
vim.keymap.set('n', '<leader>NT', ':Neotree action=focus toggle=true reveal=true<Enter>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
