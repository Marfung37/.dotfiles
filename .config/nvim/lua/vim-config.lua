vim.opt.mouse="" -- no mouse support in nvim

-- tab to 4 spaces
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true

-- fold configs
vim.opt.foldmethod="indent"
vim.opt.foldlevel=1
vim.opt.foldclose="all"

-- don't conceal
vim.g.indentLine_setConceal = 2
vim.g.indentLine_concealcursor = ""

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
