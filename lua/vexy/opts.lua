-- CUSTOM OPTS

-- Enable nerd font in other locations
vim.g.have_nerd_font = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
-- Enable break indent
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = 'no'
-- Decrease update time
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '  ', trail = ' ', nbsp = '␣' }
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'both'

-- Autocommands
vim.api.nvim_create_autocmd('BufEnter', { -- Line Numbers
  pattern = '*',
  callback = function()
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.numberwidth = 7
    vim.opt.statuscolumn = '%=%{v:relnum?v:relnum:v:lnum} │ '
    vim.opt.fillchars:append { eob = ' ' }
  end,
})

vim.api.nvim_create_autocmd('TextYankPost', { -- Highlight on Yank
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.schedule(function() -- Sync clipboard between OS and Neovim.
  vim.opt.clipboard = 'unnamedplus'
end)
