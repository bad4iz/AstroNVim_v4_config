-- Плагин Mason
-- Менеджер для установки и управления LSP серверами, форматтерами и линтерами
-- Упрощает установку инструментов разработки
--
-- Команды:
--   :Mason - Открыть интерфейс Mason для установки инструментов
--
-- Автоматически устанавливаются:
--   LSP серверы: lua_ls, vtsls, eslint, html, cssls, tailwindcss
--   Форматтеры: stylua, prettier
--   Отладчики: python
--
-- Добавьте нужные инструменты в список ensure_installed
---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "vtsls", -- TypeScript/JavaScript LSP
        "eslint", -- ESLint LSP for linting JS/TS
        "html", -- HTML LSP
        "cssls", -- CSS LSP
        "tailwindcss", -- Tailwind CSS LSP
        -- add more arguments for adding more language servers
      })
    end,
  },
  -- Ensure formatters are installed for conform.nvim
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "stylua", -- Lua formatter
        "prettier", -- Prettier for formatting
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "python",
        -- add more arguments for adding more debuggers
      })
    end,
  },
}
