-- Плагин Trouble
-- Красивый список диагностики, ошибок, предупреждений и LSP информации
-- Альтернатива quickfix и location list с лучшим UI
--
-- Горячие клавиши:
--   <leader>xx  - Открыть/закрыть список диагностики
--   <leader>xX  - Диагностика только текущего буфера
--   <leader>cs  - Список символов (функции, классы и т.д.)
--   <leader>cl  - LSP определения и ссылки
--   <leader>xL  - Location List
--   <leader>xQ  - Quickfix List
return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
