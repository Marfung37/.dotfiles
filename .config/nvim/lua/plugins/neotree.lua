return {
  "nvim-neo-tree/neo-tree.nvim",
  -- LazyVim already handles dependencies, branch, and lazy-loading.
  -- We just inject or overwrite the keys we care about.
  keys = {
    -- 1. If you want to use <leader>e to toggle Neo-tree
    {
      "<leader>e",
      "<cmd>Neotree toggle<cr>",
      desc = "Neo-tree (Root Dir)",
    },
    -- 2. If you want a floating window variant
    {
      "<leader>E",
      "<cmd>Neotree toggle position=float<cr>",
      desc = "Neo-tree Float",
    },
  },
}
