# myNvim-configByRu22-S

# Neovim Configuration

This repository contains my personalized Neovim configuration for a streamlined development workflow. It includes plugins and settings for:

- **File Navigation**: Telescope for fuzzy finding (`<leader>ff`, `<leader>fg`).
- **Syntax Highlighting**: Treesitter for languages like C, Lua, Python, and more.
- **LSP Support**: Mason and LSP Zero for language servers (e.g., Lua, Python, TypeScript).
- **Autocompletion**: nvim-cmp with LuaSnip snippets.
- **UI Enhancements**: Kanagawa theme and Flutter tools.

## Key Features

- **Leader Key**: `<Space>`.
- **Undotree**: Toggle with `<leader>u`.
- **Telescope Shortcuts**:
  - `<leader>ff`: Find files.
  - `<leader>fg`: Live grep.
  - `<leader>fb`: Browse buffers.
  - `<leader>fh`: Help tags.

## Installation

1. Clone this repository to `~/.config/nvim`.
2. Ensure Neovim (v0.9+) and `git` are installed.
3. Launch Neovim; plugins will auto-install via `lazy.nvim`.

## Plugins

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [Mason-LSP](https://github.com/williamboman/mason-lspconfig.nvim)
- [Undotree](https://github.com/mbbill/undotree)
- [Flutter Tools](https://github.com/nvim-flutter-tools/flutter-tools.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)

## Notes

- **Security**: API keys are sourced from environment variables (e.g., `os.getenv("DEEPSEEK_API_KEY")`).
- **Customization**: Modify `lua/Boss_files/*.lua` for personal preferences.

Happy coding!
