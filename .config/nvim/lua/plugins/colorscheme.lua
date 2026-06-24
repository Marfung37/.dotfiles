return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require("dracula")
      dracula.setup({
        transparent_bg = true,
        show_end_of_buffer = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
