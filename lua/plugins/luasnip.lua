-- Плагин LuaSnip
-- Движок для сниппетов (фрагментов кода)
-- Загружает пользовательские сниппеты из lua/snippets/
--
-- Настроенные сниппеты для:
--   - HTML, CSS
--   - JavaScript, TypeScript
--   - React, Vue, Next.js
--
-- Использование:
--   - Начните вводить сокращение и нажмите Tab для раскрытия
--   - Tab/Shift+Tab для навигации между позициями в сниппете
--   - Интегрировано с nvim-cmp (приоритет: 750)
return {
  -- "L3MON4D3/LuaSnip",
  -- config = function(plugin, opts)
  --   require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --
  --   require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/lua/snippets" } } -- load snippets paths
  -- end,
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
  -- local luasnip = require "luasnip"
      -- luasnip.filetype_extend("javascript", { "javascriptreact" })

      require("luasnip.loaders.from_vscode").lazy_load { paths = { vim.fn.stdpath "config" .. "/lua/snippets" } } -- load snippets paths
    end,
  }
