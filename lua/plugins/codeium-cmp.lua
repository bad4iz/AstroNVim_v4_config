--[[
  Codeium AI (Windsurf) - интеграция с nvim-cmp

  Показывает AI подсказки в меню автодополнения вместо inline текста.

  ПРЕИМУЩЕСТВА:
  - Подсказки Codeium отображаются БИРЮЗОВЫМ цветом в меню cmp
  - Легко отличить от LSP, snippets, Supermaven и других источников
  - Единое меню для всех источников автодополнения

  ЦВЕТОВОЕ ВЫДЕЛЕНИЕ настроено в: lua/plugins/cmp.lua:17-20
  - CmpItemKindCodeium = #00d7af (яркий бирюзовый, жирный)
  - Иконка:  Codeium (искры = flow state)

  СОВМЕСТИМОСТЬ:
  - Работает одновременно с Supermaven (inline подсказки)
  - Codeium = бирюзовый в меню cmp
  - Supermaven = синие inline подсказки (#4b98e7)

  Горячие клавиши (стандартные для nvim-cmp):
  - <CR> - принять выбранную подсказку
  - <C-n>/<C-p> - навигация по меню вверх/вниз
  - <C-Space> - открыть меню автодополнения
  - <C-e> - закрыть меню

  Заменяет: lua/plugins/neocodeium.lua (inline подсказки)
--]]
return {
  "Exafunction/codeium.nvim",
  event = "InsertEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup {
      enable_chat = true, -- Включить Codeium Chat
    }
  end,
}
