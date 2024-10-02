-- normal vim configurations
require('vim-config')
require('custom-keys')

-- plugins
require('plugins')
require('mason-config')

-- code completion configuration
require('code-completion')

-- file system explorer
require('file-explorer')
require('file-finder') -- Live Grep file finder

-- styling for nvim
require('styling')
require('statusbar') -- lualine with pretty status bar
require('syntax-highlight') -- Treesitter highlighting
require('autotag') -- Treesitter autotag
require('autopairs') -- automatically close parentheses
require('comments') -- Commenting

-- DAP Configurations
require('debugging')

-- Python Configurations
require('pyright') -- Pyright LSP
require('debugpy-config') -- Debugpy DAP

-- C++ Configurations
require('clangd')

-- Web LSP
require('html-lsp-config')

-- Java LSP
require('java')

-- JS DAP
require('dap-js-config')

-- Keylogger
require('keylogger')
