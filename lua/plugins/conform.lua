-- Плагин Conform.nvim
-- Современный плагин для форматирования кода
-- Автоматически форматирует файлы при сохранении
--
-- ОТКЛЮЧЕНО по умолчанию
-- Удалите строку ниже для активации
--
-- Настроенные форматтеры:
--   Lua: stylua
--   JS/TS/React: prettier
--   HTML/CSS/SCSS: prettier
--   JSON/YAML/Markdown: prettier
--
-- Настройки:
--   - Форматирование при сохранении (timeout: 1000ms)
--   - Fallback на LSP если форматтер не настроен
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
--
--
-- Conform.nvim - modern formatting plugin

---@type LazySpec
return {
  "stevearc/conform.nvim",
  event = "BufWritePre", -- Load before saving
  opts = {
    -- Define formatters by filetype
    formatters_by_ft = {
      -- Lua
      lua = { "stylua" },

      -- JavaScript/TypeScript
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },

      -- Web
      vue = { "prettier" },
      svelte = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      less = { "prettier" },

      -- Config files
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      toml = { "prettier" },

      -- Markdown
      markdown = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
    },

    -- Format on save configuration
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true, -- Use LSP formatting if no formatter configured
    },

    -- Formatter-specific options
    formatters = {
      prettier = {
        prepend_args = {
          "--single-quote",
          "--trailing-comma=es5",
        },
      },
    },
  },
}
