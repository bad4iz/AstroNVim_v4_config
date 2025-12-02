if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

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
    },
    restricted_keys = {
      ["<Up>"] = { "n", "x" },
      ["<Down>"] = { "n", "x" },
      ["<Left>"] = { "n", "x" },
      ["<Right>"] = { "n", "x" },
    },
  },
  config = function(_, opts)
    require("hardtime").setup(opts)
    require("hardtime").enable()
  end,
}
