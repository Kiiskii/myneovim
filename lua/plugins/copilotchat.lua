return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim' },
    },
    opts = {
      show_help = 'yes',
      auto_follow_cursor = false,
      show_user_selection = false,
    },
    build = function()
      vim.notify('Please run :Copilot auth to set up GitHub Copilot')
    end,
    cmd = { 'CopilotChat', 'CopilotChatToggle' },
    keys = {
      { '<leader>cc', ':CopilotChat<CR>', desc = '[C]opilot [C]hat' },
      { '<leader>ct', ':CopilotChatToggle<CR>', desc = '[C]opilot [T]oggle Chat' },
      { '<leader>ce', ':CopilotChatExplain<CR>', desc = '[C]opilot [E]xplain', mode = 'v' },
      { '<leader>cr', ':CopilotChatReview<CR>', desc = '[C]opilot [R]eview', mode = 'v' },
      { '<leader>cf', ':CopilotChatFix<CR>', desc = '[C]opilot [F]ix', mode = 'v' },
      { '<leader>cR', ':CopilotChatReset<CR>', desc = '[C]opilot [R]eset' },
    },
    config = function(_, opts)
      local copilot = require('copilot')
      local chat = require('CopilotChat')
      copilot.setup({
        suggestion = { enabled = false, auto_trigger = false },
        panel = { enabled = false },
      })
      chat.setup(opts)
    end,
  },
}
