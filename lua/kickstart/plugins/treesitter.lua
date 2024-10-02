return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'jsdoc', 'javascript', 'typescript' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby', 'markdown' },
        disable = { 'cpp' },
      },
      indent = { enable = true, disable = { 'ruby', 'c', 'cpp' } },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      -- Prefer git instead of curl in order to improve connectivity in some environments
      require('nvim-treesitter.install').prefer_git = true
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)

      -- There are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. You should go explore a few and see what interests you:
      --
      --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et

-- return {
--   'nvim-treesitter/nvim-treesitter',
--   build = ':TSUpdate',
--   config = function()
--     require('nvim-treesitter.configs').setup {
--       -- A list of parser names, or "all"
--       ensure_installed = {
--         'vimdoc',
--         'javascript',
--         'typescript',
--         'c',
--         'lua',
--         'rust',
--         'jsdoc',
--         'bash',
--       },
--
--       -- Install parsers synchronously (only applied to `ensure_installed`)
--       sync_install = false,
--
--       -- Automatically install missing parsers when entering buffer
--       -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
--       auto_install = true,
--
--       indent = {
--         enable = true,
--         disable = { 'cpp' },
--       },
--
--       highlight = {
--         -- `false` will disable the whole extension
--         enable = true,
--         disable = { 'cpp' },
--
--         -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--         -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
--         -- Using this option may slow down your editor, and you may see some duplicate highlights.
--         -- Instead of true it can also be a list of languages
--         additional_vim_regex_highlighting = { 'markdown' },
--       },
--
--       folding = {
--         disable = { 'cpp' },
--       },
--     }
--
--     local treesitter_parser_config = require('nvim-treesitter.parsers').get_parser_configs()
--     treesitter_parser_config.templ = {
--       install_info = {
--         url = 'https://github.com/vrischmann/tree-sitter-templ.git',
--         files = { 'src/parser.c', 'src/scanner.c' },
--         branch = 'master',
--       },
--     }
--
--     vim.treesitter.language.register('templ', 'templ')
--   end,
-- }
