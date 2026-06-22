return {
  {
    "SirVer/ultisnips",
    lazy = false, -- Must load early so Python bindings initialize
    init = function()
      -- Point this to the directory where your tex.snippets file is located
      vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }

      -- Set your triggers. Avoid clean <Tab> if it fights your autocomplete menu.
      -- Many LaTeX users love using <C-j> or a dedicated trigger for speed.
      vim.g.UltiSnipsExpandTrigger = "<C-j>"
      vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"

      -- Ensure Python 3 is picked up correctly if you use Arch Linux
      vim.g.UltiSnipsUsePythonVersion = 3
    end,
  },
}
