-- Disabled: windsurf.vim только для inline подсказок
-- Для nvim-cmp используйте codeium.nvim (тот же Windsurf AI)
if true then return {} end

return {
  "Exafunction/windsurf.vim",
  event = "User AstroFile",
  config = function()
    -- Default keymaps similar to codeium.vim structure
    vim.keymap.set(
      "i",
      "<C-f>",
      function() return vim.fn["windsurf#Accept"]() end,
      { expr = true, desc = "Accept Windsurf suggestion" }
    )
    vim.keymap.set(
      "i",
      "<c-;>",
      function() return vim.fn["windsurf#CycleCompletions"](1) end,
      { expr = true, desc = "Next Windsurf suggestion" }
    )
    vim.keymap.set(
      "i",
      "<c-,>",
      function() return vim.fn["windsurf#CycleCompletions"](-1) end,
      { expr = true, desc = "Previous Windsurf suggestion" }
    )
    vim.keymap.set(
      "i",
      "<c-x>",
      function() return vim.fn["windsurf#Clear"]() end,
      { expr = true, desc = "Clear Windsurf suggestions" }
    )
    vim.keymap.set("n", "<leader>w", function()
      if vim.g.windsurf_enabled == true then
        vim.cmd "WindsurfDisable"
      else
        vim.cmd "WindsurfEnable"
      end
    end, { noremap = true, desc = "Toggle Windsurf active" })
  end,
}
