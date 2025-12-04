-- Плагин Treesitter
-- Продвинутый парсер синтаксиса для подсветки кода и навигации
-- Обеспечивает точную подсветку синтаксиса и работу текстовых объектов
--
-- Установленные парсеры:
--   - lua, vim
--   - typescript, tsx, javascript
--   - и другие (настраиваются в community.lua)
--
-- Преимущества:
--   - Точная подсветка синтаксиса
--   - Навигация по коду (функции, классы)
--   - Текстовые объекты для редактирования
-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "vim",
      "typescript",
      "tsx",
      "javascript",
      -- add more arguments for adding more treesitter parsers
    })
  end,
}
