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
