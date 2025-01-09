if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- import/override with your plugins folder
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.code-runner.compiler-nvim", lazy = true },
  --
  -- { import = "astrocommunity.editing-support.neogen", lazy = true },
  -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim", lazy = false },
  -- { import = "astrocommunity.editing-support.telescope-undo-nvim", lazy = false },
  -- { import = "astrocommunity.editing-support.vim-move", lazy = false },
  -- { import = "astrocommunity.editing-support.wildfire-nvim", lazy = false },
  -- { import = "astrocommunity.motion.nvim-surround", lazy = false },
  -- { import = "astrocommunity.motion.hop-nvim", lazy = false },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.tailwindcss", lazy = false },
  -- { import = "astrocommunity.pack.vue", lazy = false },
  -- { import = "astrocommunity.pack.lua", lazy = false },
  -- { import = "astrocommunity.pack.json", lazy = false },
  -- { import = "astrocommunity.pack.html-css", lazy = false },
  -- { import = "astrocommunity.register.nvim-neoclip-lua", lazy = false },
}
