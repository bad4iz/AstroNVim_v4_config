--[[
  ОТКЛЮЧЕНО в пользу codeium.nvim с интеграцией nvim-cmp

  ПРИЧИНА:
  - NeoCodeium показывает inline подсказки (серый текст справа от курсора)
  - Сложно визуально отличить подсказки от разных источников

  РЕШЕНИЕ:
  - Используем Exafunction/codeium.nvim (см. lua/plugins/codeium-cmp.lua)
  - Подсказки Codeium теперь в меню nvim-cmp
  - ЗЕЛЕНОЕ цветовое выделение для Codeium подсказок (см. lua/plugins/cmp.lua:13-16)
  - Легко отличить: Codeium (зеленый) vs LSP (обычный цвет)

  Горячие клавиши для nvim-cmp:
  - <CR> (Enter) - принять подсказку
  - <C-n>/<C-p> - навигация по меню
  - <C-Space> - открыть меню

  Чтобы вернуть inline подсказки: удалите строку ниже
--]]
if true then return {} end

return {
  "monkoose/neocodeium",
  -- event = "InsertEnter",
  config = function()
    local neocodeium = require "neocodeium"
    neocodeium.setup()

    -- Custom highlight for Codeium suggestions (distinct color)
    vim.api.nvim_set_hl(0, "NeoCodeiumSuggestion", {
      fg = "#5fd787", -- Bright green color
      italic = true,
      bold = false,
    })

    -- Additional highlight for labels/indicators
    vim.api.nvim_set_hl(0, "NeoCodeiumLabel", {
      fg = "#00d7af", -- Cyan color
      bold = true,
    })

    -- Keymaps similar to the old codeium.vim
    vim.keymap.set("i", "<C-g>", function() neocodeium.accept() end, { desc = "Accept Neocodeium suggestion" })

    vim.keymap.set("i", "<C-w>", function() neocodeium.accept_word() end, { desc = "Accept Neocodeium word" })

    vim.keymap.set("i", "<C-l>", function() neocodeium.accept_line() end, { desc = "Accept Neocodeium line" })

    vim.keymap.set("i", "<c-;>", function() neocodeium.cycle_or_complete() end, { desc = "Next Neocodeium suggestion" })

    vim.keymap.set(
      "i",
      "<c-,>",
      function() neocodeium.cycle_or_complete(-1) end,
      { desc = "Previous Neocodeium suggestion" }
    )

    vim.keymap.set("i", "<c-x>", function() neocodeium.clear() end, { desc = "Clear Neocodeium suggestions" })

    vim.keymap.set("n", "<leader>;", function()
      if vim.g.neocodeium_enabled == false then
        vim.cmd "NeoCodeium enable"
        vim.g.neocodeium_enabled = true
        print "NeoCodeium enabled"
      else
        vim.cmd "NeoCodeium disable"
        vim.g.neocodeium_enabled = false
        print "NeoCodeium disabled"
      end
    end, { noremap = true, desc = "Toggle NeoCodeium" })
  end,
}
