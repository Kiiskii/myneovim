# Modular Neovim Config (Kickstart-inspired)

## What you get
- Clear separation of concerns:
  - `lua/config/` for options, keymaps, autocmds
  - `lua/plugins/` for **grouped** plugin specs (git, UI, LSP, Telescope, Treesitter, Copilot, misc)
- Lazy.nvim handles plugin install/update and makes adding new plugins trivial.
- Sensible defaults carried over from your current Kickstart-style config.
