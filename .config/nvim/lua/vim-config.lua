vim.opt.mouse="" -- no mouse support in nvim

-- tab to 2 spaces
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true

-- fold configs
vim.opt.foldmethod="indent"
vim.opt.foldlevel=1
vim.opt.foldclose="all"

-- don't conceal
vim.g.indentLine_setConceal = 2
vim.g.indentLine_concealcursor = ""

-- relative number
vim.opt.number=true
vim.opt.relativenumber=true

-- allow for changes while in insert mode
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
     vim.lsp.diagnostic.on_publish_diagnostics,
     {
         underline = true,
         virtual_text = {
             spacing = 5,
             severity_limit = 'Warning',
         },
         update_in_insert = true,
     }
 )

-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
  virtual_text = false,
})
