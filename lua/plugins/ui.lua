return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme('tokyonight')
      vim.cmd.hi('Comment gui=none')
    end,
  },
  -- {
  --   'loctvl842/monokai-pro.nvim',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme('monokai-pro')
  --     vim.cmd.hi('Comment gui=none')
  --   end,
  -- },
}
