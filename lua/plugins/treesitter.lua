return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = { enable = true, additional_vim_regex_highlighting = { 'ruby' } },
      -- Disabled: master branch is archived and its indent module errors on Neovim 0.12
      -- (nvim_treesitter#indent throws in query_predicates.lua). Built-in runtime indent
      -- scripts + autoindent/smartindent (see config/options.lua) handle indentation instead.
      indent = { enable = false },
    },
  },
}
