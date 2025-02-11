-- CUSTOM OPTS

vim.g.have_nerd_font = true -- Enable nerd font in other locations
vim.opt.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'no' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true --  See `:help 'list'`
vim.opt.listchars = { tab = '  ', trail = ' ', nbsp = '␣' } --  and `:help 'listchars'
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
vim.opt.scrolloff = 20 -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.cursorlineopt = 'both'

-- Autocommands
vim.api.nvim_create_autocmd('BufEnter', { -- Line Numbers
  pattern = '*',
  callback = function()
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.numberwidth = 7
    vim.opt.statuscolumn = '%=%{v:relnum?v:relnum:v:lnum} │ '
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
