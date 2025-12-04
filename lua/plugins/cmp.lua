-- Плагин nvim-cmp
-- Движок автодополнения для Neovim
-- Объединяет подсказки от LSP, AI помощников, сниппетов и других источников
--
-- Источники автодополнения (по приоритету):
--   1. Supermaven AI (1010) - фиолетовый цвет
--   2. Codeium AI (1010) - бирюзовый цвет
--   3. LSP (1000) - стандартный цвет
--   4. LuaSnip сниппеты (750)
--   5. Emoji (700)
--   6. Буфер (500)
--   7. Путь (250)
--
-- Горячие клавиши:
--   <CR> - Принять выбранное автодополнение
--   <C-n>/<C-p> - Навигация вверх/вниз по меню
--   <C-Space> - Открыть меню автодополнения
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-emoji" },
    },
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      local cmp = require "cmp"

      -- ============================================================
      -- ЦВЕТОВОЕ ВЫДЕЛЕНИЕ для AI помощников в меню cmp
      -- ============================================================
      -- Codeium (Windsurf) = БИРЮЗОВЫЙ (#00d7af)
      -- Supermaven = ФИОЛЕТОВЫЙ (#d787ff)
      -- LSP и другие = обычный цвет
      -- ============================================================
      vim.api.nvim_set_hl(0, "CmpItemKindCodeium", {
        fg = "#00d7af", -- Яркий бирюзовый
        bold = true,
      })

      vim.api.nvim_set_hl(0, "CmpItemKindSupermaven", {
        fg = "#d787ff", -- Яркий фиолетовый
        bold = true,
      })

      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        -- AI помощники с цветовым выделением:
        { name = "supermaven", priority = 1010 }, -- ФИОЛЕТОВЫЙ (#d787ff)
        { name = "codeium", priority = 1010 }, -- БИРЮЗОВЫЙ (#00d7af)
        -- Стандартные источники:
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "emoji", priority = 700 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }

      opts.formatting = {
        format = require("lspkind").cmp_format {
          mode = "symbol",
          maxwidth = 50,
          ellipsis_char = "...",
          symbol_map = { Codeium = "✨", Supermaven = "󱙺" },
        },
      }
      -- modify the mapping part of the table
      -- opts.mapping["<C-j>"] = cmp.mapping.select_next_item()
      -- opts.mapping["<C-Space>"] = cmp.mapping.complete()
      -- opts.mapping["<C-m>"] = cmp.mapping.complete()

      -- return the nw table to be used
      return opts
    end,
    lazy = false,
  },
}
