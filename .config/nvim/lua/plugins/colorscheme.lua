return {
  -- 1. Install the Dracula plugin
  {
    "Mofiqul/dracula.nvim",
    lazy = false, -- Load it immediately on startup
    priority = 1000, -- High priority to ensure it loads before other plugins
    config = function()
      -- Configure Dracula options here BEFORE loading it
      local dracula = require("dracula")
      dracula.setup({
        -- If you want transparency alongside Dracula, uncomment the line below:
        -- transparent = true,
        show_end_of_buffer = true, -- Shows ~ at the end of buffers
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true, -- Enables transparency for the main editor
      styles = {
        sidebars = "transparent", -- Makes Neo-tree transparent
        floats = "transparent", -- Makes popups/documentation windows transparent
      },
    },
  },
}
