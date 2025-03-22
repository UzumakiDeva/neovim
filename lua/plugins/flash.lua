return {
  "folke/flash.nvim",
  opts = {},
  config = function()
    -- setup flash first
    require("flash").setup({
      modes = {
        char = {
          keys = { "f", "f", "r", "r" }, -- replace 's' with 'f'
        }
      },
    })

    -- now set keymap for 'f'
    vim.keymap.set({ "n", "x", "o" }, "f", function()
      require("flash").jump()
    end, { desc = "flash jump" })
    vim.keymap.set({ "n", "x", "o" }, "F", function()
        require("flash").treesitter()
    end )
  end,
}

