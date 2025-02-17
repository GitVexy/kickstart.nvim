-- Opts
-- vim.opt.colorcolumn = '0' -- Stop making long functions

-- CUSTOM THEME
require('catppuccin').setup {
  flavour = 'mocha',
  background = { dark = 'mocha' },
  transparent_background = true, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)

  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = {}, -- Change the style of comments
    conditionals = {},
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },

  color_overrides = {
    mocha = {
      -- subtext0 = '',
      -- overlay1 = '',
      rosewater = '#F5B5D7', -- ???
      flamingo = '#F588A9', -- {}
      pink = '#F55593', -- ????
      mauve = '#BC82F5', -- def, for, break, class
      red = '#F52F2F', -- self.var
      maroon = '#667CF5', -- += variables in etc...
      peach = '#F57143',
      yellow = '#72F560',
      green = '#4C963A',
      teal = '#52cc8f',
      sky = '#52c3cc',
      sapphire = '#52a9cc',
      blue = '#5286cc',
      lavender = '#ffba4e', -- Main accent color
      text = '#ffba4e',
      subtext1 = '#ffba4e',
      overlay0 = '#e50040', -- ????
      overlay2 = '#5ed2a7', -- Comments, gutter number
      surface0 = '#A12D58', -- CursorLine
      surface1 = '#A12D58', -- HighLight
      surface2 = '#e50040',

      crust = '#A12D58',
      mantle = '#A12D58',
      base = '#000000',
    },
  },

  custom_highlights = function()
    return {
      -- Custom highlights
      CursorLine = { bg = '#A12D58' },
      CursorColumn = { bg = '#A12D58' },
      Search = { bg = '#F52F2F', fg = '#FFFFFF' },
    }
  end,

  default_integrations = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = { enabled = true, indentscope_color = '' },
  },
}
vim.cmd.colorscheme 'catppuccin'

require('modes').setup {
  colors = {
    insert = '#ffba4e',
    visual = '#007359',
    delete = '#ff0000',
    copy = '#52c3cc',
  },
  line_opacity = 0.50,
  set_cursor = true,
  set_cursorline = false,
  set_number = true,
  ignore_filetypes = { 'NvimTree', 'TelescopePrompt' },
}
require('barbecue').setup {
  theme = 'catppuccin-mocha',
}
require('staline').setup {
  defaults = {
    full_path = true,
    line_column = '[%l:%c / %L] %p%%', -- `:h stl` to see all flags.
    cool_symbol = '',
    branch_symbol = ': ',
    true_colors = true,
    fg = '#ffba4e',
    bg = 'none',
    inactive_bgcolor = 'none',
  },
  sections = {
    left = { 'branch', '{ ', 'lsp', '}' },
    mid = { 'file_name', 'file_size' },
    right = { '-line_column' },
  },
  mode_colors = {
    n = 'none',
    i = 'none',
    v = 'none', -- etc..
    c = 'none',
  },
}
