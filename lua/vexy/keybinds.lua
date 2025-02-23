--  CUSTOM KEYMAPS AND SHIT
-- vim.keymap.set('', '', '')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

---------------------------------------------------------------- Functionality

--------------------------------------------------------------- Leader keymaps
vim.keymap.set('n', '<leader>py', ':!python3 %<CR>', {
  desc = 'Run python file',
}) -- 14.02.2025

vim.keymap.set('n', '<leader>so', ':w<CR>:so<CR>')

vim.keymap.set('n', '<leader>AD', '03ly$j$i,{<Enter>desc = ""}<Esc>2hp2kdd', {
  desc = 'Add description to keymap from comment',
}) -- 12.02.2025

vim.keymap.set('n', '<leader>T', ':Neotree action=focus toggle=true reveal=true<Enter>', {
  desc = 'Launch / Toggle NeoTree',
}) -- 12.02.2025

vim.keymap.set('n', '<leader>acb', '0d$jA <Esc>p0i<BS><Esc>0', {
  desc = 'Move comment to end of line beneath',
}) -- 11.02.2025

vim.keymap.set('n', '<leader>aca', '$F-2hd$O<Esc>p0', {
  desc = 'Move comment from end of line to above',
}) -- 11.02.2025

----------------------------------------------------------- Non-leader keymaps

-- Move around active windows -- 15.02.2025
vim.keymap.set('n', '<M-Left>', '<C-W>h')
vim.keymap.set('n', '<M-Down>', '<C-W>j')
vim.keymap.set('n', '<M-Up>', '<C-W>k')
vim.keymap.set('n', '<M-Right>', '<C-W>l')

vim.keymap.set('i', '<C-a>', '<Esc>:%y<CR>', {
  desc = 'Copy all insert mode',
}) -- 22.02.2025

vim.keymap.set('n', '<C-a>', ':%y<CR>', {
  desc = 'Copy all normal mode',
}) -- 22.02.2025

vim.keymap.set('n', '<C-Right>', ':vne<CR>', {
  desc = 'Split right',
}) -- 15.02.2025

vim.keymap.set('n', '<C-Down>', ':new<CR>', {
  desc = 'Split down',
}) -- 15.02.2025

vim.keymap.set('n', '<C-k>', 'ddkP', {
  noremap = true,
  silent = true,
  desc = 'Move line up',
}) -- 09.02.2025

vim.keymap.set('n', '<M-J>', '0y$o<Esc>p$', {
  desc = 'Duplicate line below',
}) -- 15.02.2025

vim.keymap.set('n', '<C-j>', 'ddjP', {
  noremap = true,
  silent = true,
  desc = 'Move line down',
}) -- 12.02.2025

vim.keymap.set('n', '<C-q>', ':q<Enter>', {
  desc = 'Close file',
}) -- 13.02.2025

vim.keymap.set('n', '<M-k>', 'O<Esc>03x', {
  desc = 'New line above',
}) -- 12.02.2025

vim.keymap.set('n', '<M-j>', 'o<Esc>03x', {
  desc = 'New line below',
}) -- 12.02.2025

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', {
  desc = 'Turn off highlight after search',
}) -- built in

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', {
  desc = 'Exit terminal mode',
}) -- built in
