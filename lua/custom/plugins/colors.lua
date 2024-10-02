-- Function to set the colorscheme and save last used theme
function ColorMyPencils(color)
  color = color or 'rose-pine-moon'
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

return {

  {
    'erikbackman/brightburn.vim',
  },

  {
    'folke/tokyonight.nvim',
    lazy = false,
    opts = {},
  },

  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = false,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = '', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
    end,
  },

  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      if vim.fn.has 'termguicolors' == 1 then
        vim.o.termguicolors = true
      end
      -- styles: default, atlantis, andromeda, shusia, maia, espresso
      vim.g.sonokai_style = 'atlantis'
      vim.g.sonokai_better_performance = 1
      vim.g.lightline = { colorscheme = 'sonokai' }
      vim.g.sonokai_enable_italic = true
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        disable_background = true, -- This makes the background color gray like primes
        disable_float_background = true,
        styles = {
          italic = false,
        },
        -- https://github.com/rose-pine/neovim/blob/main/lua/rose-pine.lua
        -- ^ to see rose-pine settings that you can edit
        highlight_groups = {
          ColorColumn = { bg = '#32302f' },
          CursorLine = { bg = '#32302f' },
          CursorColumn = { bg = '#32302f' },
          StatusLine = { bg = '#32302f' }, -- I dont think these 2 status line things actually do anything
          StatusLineNC = { bg = '#32302f' },
        },
      }
    end,
  },

  {
    'navarasu/onedark.nvim',
    name = 'onedark',
    config = function()
      require('onedark').setup {
        toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between
        style = 'dark',
      }
      require('onedark').load()
    end,
  },

  {
    'rebelot/kanagawa.nvim',
  },
}
