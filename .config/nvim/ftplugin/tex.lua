local map = vim.keymap.set

-- Run latex file
map('n', '<C-s>t', [[:!latexrun %<CR>]], {})

-- Add \begin{} and \end{} with the contents of current line
map('n', '<C-s>b',  [[yyI\begin{<ESC>A}<ESC>o<ESC>pI\end{<ESC>A}<esc>k]], {})
map('i', '<C-s>b', [[<ESC>yyI\begin{<ESC>A}<ESC>o<ESC>pI\end{<ESC>A}<esc>k]], {})


