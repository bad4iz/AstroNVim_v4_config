-- Плагин Flash.nvim
-- Быстрая навигация по файлу с помощью подсвеченных меток
-- Позволяет моментально перемещаться к любому месту в видимом тексте
--
-- Горячие клавиши:
--   s - Flash jump (прыжок к символу)
--   S - Flash Treesitter (навигация по синтаксическим узлам)
--   r - Remote Flash (для операторов)
--   R - Treesitter Search (поиск по синтаксическим узлам)
--   <C-s> - Toggle Flash Search (в командном режиме)
return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
