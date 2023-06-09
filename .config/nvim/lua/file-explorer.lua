-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- cwd to the directory of file in buffer
vim.g.nvim_tree_respect_buf_cwd = 1


-- empty setup using defaults
require("nvim-tree").setup({
    update_focused_file = {
        enable = true,
        update_cwd = true,
    }
})
