return {
  "monkoose/neocodeium",
  event = "InsertEnter",
  config = function()
    local neocodeium = require("neocodeium")
    neocodeium.setup()

    -- Keymaps similar to the old codeium.vim
    vim.keymap.set("i", "<C-g>", function()
      neocodeium.accept()
    end, { desc = "Accept Neocodeium suggestion" })

    vim.keymap.set("i", "<C-w>", function()
      neocodeium.accept_word()
    end, { desc = "Accept Neocodeium word" })

    vim.keymap.set("i", "<C-l>", function()
      neocodeium.accept_line()
    end, { desc = "Accept Neocodeium line" })

    vim.keymap.set("i", "<c-;>", function()
      neocodeium.cycle_or_complete()
    end, { desc = "Next Neocodeium suggestion" })

    vim.keymap.set("i", "<c-,>", function()
      neocodeium.cycle_or_complete(-1)
    end, { desc = "Previous Neocodeium suggestion" })

    vim.keymap.set("i", "<c-x>", function()
      neocodeium.clear()
    end, { desc = "Clear Neocodeium suggestions" })

    vim.keymap.set("n", "<leader>;", function()
      if vim.g.neocodeium_enabled == false then
        vim.cmd("NeoCodeium enable")
        vim.g.neocodeium_enabled = true
        print("NeoCodeium enabled")
      else
        vim.cmd("NeoCodeium disable")
        vim.g.neocodeium_enabled = false
        print("NeoCodeium disabled")
      end
    end, { noremap = true, desc = "Toggle NeoCodeium" })
  end,
}
