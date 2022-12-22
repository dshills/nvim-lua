
vim.cmd('colorscheme vim-monokai-tasty')
-- vim.cmd('colorscheme aurora')

-- Transparent mode
vim.api.nvim_set_hl(0, "Normal", { ctermbg=NONE, guibg=NONE })
vim.api.nvim_set_hl(0, "NonText", { ctermbg=NONE, guibg=NONE, guifg=NONE, cternfg=NONE })
vim.api.nvim_set_hl(0, "EndOfBuffer", { ctermbg=NONE, guibg=NONE, guifg=NONE, cternfg=NONE })

-- hi CursorLine term=underline ctermbg=238 guibg=#424450
vim.api.nvim_set_hl(0, "CursorLine", { bg='#424450'  })
-- number column is LineNR

