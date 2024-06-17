return {
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
      vim.g.sonokai_style = 'shusia'
      vim.g.sonokai_better_performance = 1

      vim.cmd 'colorscheme sonokai'
      vim.g.lightline = { colorscheme = 'sonokai' }

      vim.g.sonokai_enable_italic = true
      vim.cmd.colorscheme 'sonokai'
    end,
  },
}
