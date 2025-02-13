--  CUSTOM KEYMAPS AND SHIT
-- vim.keymap.set('', '', '')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--------------------------------------------------------------- Leader keymaps

vim.keymap.set('n', '<leader>T', ':Neotree action=focus toggle=true reveal=true<Enter>', {
  desc = 'Launch / Toggle NeoTree',
})

vim.keymap.set('n', '<leader>Ac', '0d$jA <Esc>p0i<BS><Esc>0', {
  desc = 'Move comment to end of line beneath',
})

vim.keymap.set('n', '<leader>AC', '$F-2hd$O<Esc>p0', {
  desc = 'Move comment from end of line to above',
})

vim.keymap.set('n', '<leader>AD', '03ly$j$i,{<Enter>desc = ""}<Esc>2hp2kdd', {
  desc = 'Add description to keymap from comment',
})

----------------------------------------------------------- Non-leader keymaps

vim.keymap.set('n', '<C-k>', 'ddkP', {
  noremap = true,
  silent = true,
  desc = 'Move line up',
})

vim.keymap.set('n', '<C-j>', 'ddjP', {
  noremap = true,
  silent = true,
  desc = 'Move line down',
})

vim.keymap.set('n', '<C-q>', ':q<Enter>', {
  desc = 'Close file',
})

vim.keymap.set('n', '<M-k>', 'O<Esc>03x', {
  desc = 'New line above',
})

vim.keymap.set('n', '<M-j>', 'o<Esc>03x', {
  desc = 'New line below',
})

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', {
  desc = 'Turn off highlight after search',
})

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', {
  desc = 'Exit terminal mode',
})
