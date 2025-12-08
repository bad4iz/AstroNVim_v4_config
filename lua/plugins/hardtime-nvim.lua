-- Плагин Hardtime
-- Обучение эффективным движениям в Vim
-- Ограничивает использование неэффективных клавиш (hjkl, стрелки)
-- Помогает выработать привычку использовать правильные Vim команды
--
-- ОТКЛЮЧЕНО по умолчанию
-- Удалите строку ниже, чтобы активировать
--
-- Полезно для:
--   - Изучения эффективных движений Vim
--   - Отучения от использования hjkl для длинных перемещений
--   - Привыкания к командам типа w, b, f, t, /, {, } и т.д.
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "m4xshen/hardtime.nvim",
  event = "User AstroFile",
  opts = {
    disabled_keys = {
      ["<Insert>"] = { "", "i" },
      ["<Home>"] = { "", "i" },
      ["<End>"] = { "", "i" },
      ["<PageUp>"] = { "", "i" },
      ["<PageDown>"] = { "", "i" },
      -- Убираем стрелочки из disabled_keys чтобы они не блокировались
      ["<Up>"] = false,
      ["<Down>"] = false,
      ["<Left>"] = false,
      ["<Right>"] = false,
    },
    -- Используем restricted_keys для ограничения стрелочек только в normal/visual
    restricted_keys = {
      ["h"] = { "n", "x" },
      ["j"] = { "n", "x" },
      ["k"] = { "n", "x" },
      ["l"] = { "n", "x" },
      ["<Up>"] = { "n", "x" },
      ["<Down>"] = { "n", "x" },
      ["<Left>"] = { "n", "x" },
      ["<Right>"] = { "n", "x" },
    },
    enabled = true,
    allow_different_key = true,
  },
  config = function(_, opts)
    require("hardtime").setup(opts)
    require("hardtime").enable()
  end,
}
