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
    -- enabled_keys={
    --   ["<Up>"] = { "", "i" },
    --   ["<Down>"] = { "", "i" },
    --   ["<Left>"] = { "", "i" },
    --   ["<Right>"] = { "", "i" },
    -- },
  },
  config = function(_, opts)
    require("hardtime").setup(opts)
    require("hardtime").enable()
  end,
}
