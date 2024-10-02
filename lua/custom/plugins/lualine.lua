return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto', --sonokai, onedark, gruvbox_dark, gruvbox_light, gruvbox, gruvbox-material, dracula, or auto to match any theme
      },
    }
  end,
}
