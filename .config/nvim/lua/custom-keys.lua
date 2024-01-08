-- update leader key to ,
vim.g.mapleader = ","

-- fetch keymap
local map = vim.api.nvim_set_keymap

-- map the key <C-n> to run the command :NvimTreeToggle
map('n', '<C-n>', [[:NvimTreeToggle<CR>]], {})

-- nvim-dap keymappings
-- Press Ctrl+d to toggle debug mode, will remove NvimTree also
map('n', '<C-d>d', [[:lua require'dapui'.toggle()<CR>]], {})
-- Press f5 to debug
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- Press CTRL + d + b to toggle regular breakpoint
map('n', '<C-d>b', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + d + c to toggle Breakpoint with Condition
map('n', '<C-d>c', [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
-- Press CTRL + l to toggle Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Pressing F10 to step over
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
-- Pressing F11 to step into
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
-- Pressing F12 to step out
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
-- Press F6 to toggle REPL
map('n', '<F6>', [[:lua require'dap'.repl.toggle()<CR>]], {})
-- Press dl to run last ran configuration (if you used f5 before it will re run it etc)
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})

-- Run latex file
map('n', '<C-s>t', [[:!latexrun %<CR>]], {})
map('n', '<C-s>b',  [[yyI\begin{<ESC>A}<ESC>o<ESC>pI\end{<ESC>A}<esc>k]], {})
map('i', '<C-s>b', [[<ESC>yyI\begin{<ESC>A}<ESC>o<ESC>pI\end{<ESC>A}<esc>k]], {})


