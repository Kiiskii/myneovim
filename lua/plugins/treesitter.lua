return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      -- The `main` branch replaces the old `configs.setup{ ensure_installed = ... }`
      -- API with an explicit install() call plus per-buffer vim.treesitter.start().
      -- (master is archived and crashes on Neovim 0.12 — see git history.)
      local parsers = {
        'bash', 'c', 'diff', 'html', 'lua', 'luadoc',
        'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc',
      }
      require('nvim-treesitter').install(parsers)

      -- Enable highlighting (and treesitter-based features) when a buffer's
      -- filetype has a parser available. Replaces `highlight = { enable = true }`.
      vim.api.nvim_create_autocmd('FileType', {
        callback = function(ev)
          local ft = vim.bo[ev.buf].filetype
          local lang = vim.treesitter.language.get_lang(ft)
          if not lang then
            return
          end
          if not pcall(vim.treesitter.language.add, lang) then
            return
          end
          pcall(vim.treesitter.start, ev.buf, lang)

          -- ruby still benefits from regex highlighting alongside treesitter
          -- (replaces additional_vim_regex_highlighting = { 'ruby' }).
          if ft == 'ruby' then
            vim.bo[ev.buf].syntax = 'on'
          end
        end,
      })

      -- Indent stays off: the built-in runtime indent scripts plus
      -- autoindent/smartindent (see lua/config/options.lua) handle indentation.
      -- (The treesitter indent module is opt-in on `main` and not enabled here.)
    end,
  },
}
