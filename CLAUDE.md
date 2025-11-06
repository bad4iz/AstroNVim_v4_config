# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a custom Neovim configuration based on AstroNvim v4, named "bad4izNvim". The configuration is designed to run as a separate Neovim instance using the `NVIM_APPNAME` environment variable.

## Architecture

### Core Structure

- **init.lua**: Entry point that bootstraps Lazy.nvim plugin manager and loads core modules
- **lua/lazy_setup.lua**: Configures Lazy.nvim with AstroNvim v4 as the base, imports community packs and custom plugins
- **lua/community.lua**: Imports AstroNvim community packs for language support (TypeScript, Tailwind CSS, Lua, JSON, HTML/CSS)
- **lua/polish.lua**: Post-setup customization (currently disabled with `if true then return end`)
- **lua/plugins/**: Directory containing all plugin configurations

### Plugin System

The configuration uses Lazy.nvim for plugin management with a modular approach:
- Each plugin has its own file in `lua/plugins/`
- Core plugins: astrocore (mappings/options), astrolsp (LSP config), astroui (UI config)
- Many plugin files are disabled by default with `if true then return {} end` at the top

### Key Features

1. **AI Completion**: Codeium integration (lua/plugins/codeium-vim.lua)
2. **Language Support**: TypeScript/JavaScript focused with LSP, Treesitter
3. **Custom Keybindings**: Extensive remapping in astrocore.lua
4. **Snippet System**: Custom snippets in lua/snippets/ for HTML, CSS, JS/TS, Vue, React, Next.js

## Running the Configuration

Launch with custom app name:
```bash
NVIM_APPNAME=bad4izNvim nvim
```

Or using the recommended alias:
```bash
alias bn="NVIM_APPNAME=bad4izNvim nvim"
bn
```

## Cache Management

Clear Neovim cache if needed:
```bash
rm -rf ~/.local/share/bad4izNvim ~/.local/state/bad4izNvim ~/.cache/bad4izNvim
```

## Key Mappings Reference

**Leader key**: Space
**Local leader**: Comma

### Custom Mappings (from astrocore.lua)
- `<Tab>` / `<S-Tab>`: Navigate between buffers
- `<leader>qq`: Quit with confirmation
- `<leader>le`: Run ESLint fix on current file
- `<A-j>` / `<A-k>`: Move lines up/down (normal, insert, visual modes)
- `<c-C>`: Copy file path with line number
- `ge` / `gE`: Navigate to next/previous diagnostic error
- `gs`: Sort (normal and visual modes)
- `gh`: Show undo tree history
- `<Leader>fu`: Find in undo history (Telescope)

### Codeium Mappings (insert mode)
- `<C-g>`: Accept Codeium suggestion
- `<C-;>`: Cycle to next suggestion
- `<C-,>`: Cycle to previous suggestion
- `<C-x>`: Clear suggestions
- `<leader>;`: Toggle Codeium on/off (normal mode)

## Editing Plugin Configurations

Most plugin files in `lua/plugins/` are disabled by default. To enable a plugin configuration:

1. Remove the line `if true then return {} end` at the top of the file
2. Restart Neovim or run `:Lazy sync`

Examples of currently disabled plugins:
- lua/plugins/mason.lua (LSP/formatter/linter installation)
- lua/plugins/none-ls.lua (null-ls configuration)
- lua/plugins/treesitter.lua (syntax parser configuration)

## Language Server Configuration

LSP configuration is in lua/plugins/astrolsp.lua:
- Auto-formatting on save is enabled
- Format timeout: 1000ms
- Codelens refresh on InsertLeave and BufEnter
- Semantic tokens enabled by default

## Completion Sources Priority (from cmp.lua)

1. Codeium (1010)
2. LSP (1000)
3. LuaSnip (750)
4. Emoji (700)
5. Buffer (500)
6. Path (250)

## Notable Settings

- Relative line numbers enabled
- Scrolloff: 20 (keeps cursor centered)
- Clipboard integration: "unnamedplus"
- Line wrapping disabled
- Diagnostics mode: 3 (all diagnostics shown)

## Development Workflow

1. Edit configuration files in `~/.config/bad4izNvim`
2. Test with `bn` or `NVIM_APPNAME=bad4izNvim nvim`
3. Run `:Lazy sync` to update plugins after changes
4. Check `:checkhealth` for issues

## Git Workflow

- Do NOT include issue numbers in commit messages
- Monitor git status before committing changes

## Integration Notes

- Use MCP Context7 for documentation lookups
- Editor interactions should use MCP Neovim server when available
