return {
  -- Tab/shiftwidth detection
  'tpope/vim-sleuth',

  -- Which-Key (shows pending keybinds)
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,
      icons = { mappings = vim.g.have_nerd_font, keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ', Down = '<Down> ', Left = '<Left> ', Right = '<Right> ', C = '<C-…> ',
        M = '<M-…> ', D = '<D-…> ', S = '<S-…> ', CR = '<CR> ', Esc = '<Esc> ',
        Space = '<Space> ', Tab = '<Tab> ',
      }},
      spec = {
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      },
    },
  },

  -- Small quality-of-life collection
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()
      local statusline = require('mini.statusline')
      statusline.setup { use_icons = vim.g.have_nerd_font }
      statusline.section_location = function() return '%2l:%-2v' end
    end,
  },

  -- Todo / FIXME highlights
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
