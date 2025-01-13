---@type LazySpec
return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  dependencies = {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["gh"] = {
            "<cmd>UndotreeToggle<CR>",
            desc = "Find History Tree",
          },
        },
      },
    },
  },
}
