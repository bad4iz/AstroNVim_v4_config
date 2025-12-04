-- Плагин nvim-toggler
-- Быстрое переключение значений слов под курсором
-- Меняет противоположные значения: true/false, yes/no, on/off и т.д.
--
-- Горячие клавиши:
--   <Leader>i - Переключить значение слова под курсором (normal и visual)
--
-- Примеры переключений:
--   true      ↔ false
--   yes       ↔ no
--   on        ↔ off
--   enable    ↔ disable
--   width     ↔ height
--   left      ↔ right
--   и многие другие пары
return {
  "nguyenvukhang/nvim-toggler",
  event = { "User AstroFile", "InsertEnter" },
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = { ["<Leader>i"] = { function() require("nvim-toggler").toggle() end, desc = "Toggle CursorWord" } },
          v = { ["<Leader>i"] = { function() require("nvim-toggler").toggle() end, desc = "Toggle CursorWord" } },
        },
      },
    },
  },
  opts = {
    remove_default_keybinds = true,
  },
}
