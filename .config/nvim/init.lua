-- Clipboard
vim.o.clipboard = 'unnamedplus'

-- Tab width
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Line numbers
vim.o.number = true

require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Theme
  use { 'catppuccin/nvim', as = 'catppuccin' }
end)

require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'catppuccin',
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}

require('catppuccin').setup({
  flavour = 'mocha',
  transparent_background = true,
})

vim.cmd('colorscheme catppuccin')
