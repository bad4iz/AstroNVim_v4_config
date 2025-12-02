-- -- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- ESLint for linting and fixing
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.formatting.eslint_d,

      -- Prettier for formatting
      null_ls.builtins.formatting.prettier,

      -- Lua formatter
      null_ls.builtins.formatting.stylua,
    }
    return config -- return final config table
  end,
}
