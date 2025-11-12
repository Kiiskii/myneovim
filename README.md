# Modular Neovim Config (Kickstart-inspired)

## Why have my own config?

- I want to look into learning some lua.
- I want to try to keep the config modular so adding, removing or changing plugins is seemless and easy.
- Neovim is just great, so why not make it better!

## What you get
- Clear separation of concerns:
  - `lua/config/` for options, keymaps, autocmds
  - `lua/plugins/` for **grouped** plugin specs (git, UI, LSP, Telescope, Treesitter, Copilot, misc)
- Lazy.nvim handles plugin install/update and makes adding new plugins trivial.
- Sensible defaults carried over from your current Kickstart-style config.
