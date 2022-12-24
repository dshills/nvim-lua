vim.opt.background = 'dark'

vim.cmd('colorscheme vim-monokai-tasty')
-- vim.cmd('colorscheme aurora')

-- Transparent mode
vim.api.nvim_set_hl(0, "Normal", { bg=NONE })
vim.api.nvim_set_hl(0, "NonText", { bg=NONE, fg=NONE })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg=NONE, fg=NONE })

-- CursorLine
-- vim.api.nvim_set_hl(0, "CursorLine", { bg='#424450'  })
-- LineNumber LineNR
-- vim.api.nvim_set_hl(0, "LineNR", { bg='#424450'  })

