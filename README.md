# Modular Neovim Config (Kickstart-inspired)

## What you get
- Clear separation of concerns:
  - `lua/config/` for options, keymaps, autocmds
  - `lua/plugins/` for **grouped** plugin specs (git, UI, LSP, Telescope, Treesitter, Copilot, misc)
- Lazy.nvim handles plugin install/update and makes adding new plugins trivial.
- Sensible defaults carried over from your current Kickstart-style config.

## Install
1. Back up your current Neovim config folder.
   - Linux/macOS: `~/.config/nvim`
2. Copy the contents of this folder into `~/.config/nvim`.
3. Start Neovim. Lazy will install plugins automatically. Use `:Lazy` to see status.

## Add a new plugin (example)
Create a new file under `lua/plugins/` or add to an existing one:

```lua
-- lua/plugins/ai.lua
return {
  {
    'someone/some-plugin',
    opts = { foo = true, bar = 42 },
    keys = { { '<leader>x', ':SomeCommand<CR>', desc = 'Do something' } },
  },
}
```

That’s it. On the next launch (or after `:Lazy sync`), the plugin is active.

## Notes
- Nerd Font icons are controlled via `vim.g.have_nerd_font` in `init.lua`.
- Your old settings like `<leader>gg` for LazyGit, `jk` to escape, tab width 4, etc. are preserved.
- LSP supports Lua out of the box. Add more servers in `lua/plugins/lsp.lua` under the `servers` table.
# myneovim
