--[[
Modular Neovim config scaffold
- Based on Kickstart-style layout but split into clear modules.
- Plugins are managed with lazy.nvim and grouped under lua/plugins/*.lua
]]--

-- Leader keys (set before plugins)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if your terminal uses a Nerd Font
vim.g.have_nerd_font = false

-- Bootstrap lazy.nvim if needed
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable',
    'https://github.com/folke/lazy.nvim.git', lazypath })
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Core config (options, keymaps, autocmds)
require('config.options')
require('config.keymaps')
require('config.autocmds')

-- Plugins (each file in lua/plugins/*.lua is a separate module)
require('lazy').setup({ { import = 'plugins' } }, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘', config = '🛠', event = '📅', ft = '📂', init = '⚙',
      keys = '🗝', plugin = '🔌', runtime = '💻', source = '📄', start = '🚀', task = '📌', lazy = '💤 ',
    },
  },
})

-- Extra small utilities that don't fit elsewhere can be required here.
-- Example from user's previous config:
-- require('nvim-function-linecount')
