local opts = { noremap=true, silent=true }
-- noh
vim.keymap.set('n', '<leader><cr>', ":noh<cr>", opts)

-- fuzzy find
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>a', builtin.find_files, opts)

-- Toggle buffer hint
vim.keymap.set('n', '<leader>b', ":call bufferhint#Popup()<cr>", opts)
vim.keymap.set('n', '<leader>\\', ":call bufferhint#LoadPrevious()<cr>", opts)

-- Toggle file mgr
vim.keymap.set('n', '<leader>f', ":NvimTreeToggle<cr>", opts)

-- ripgrep
vim.keymap.set('n', '<leader>g', ":Rg" , opts)
vim.keymap.set('n', '<leader>G', ":Rg <cword><cr>" , opts)

-- next, prev
vim.keymap.set('n', '<c-p>', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<c-n>', vim.diagnostic.goto_next, opts)

-- Tmux nav
vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set('n', '<c-h>', ":TmuxNavigateLeft<cr>" , opts)
vim.keymap.set('n', '<c-j>', ":TmuxNavigateDown<cr>", opts)
vim.keymap.set('n', '<c-k>', ":TmuxNavigateUp<cr>", opts)
vim.keymap.set('n', '<c-l>', ":TmuxNavigateRight<cr>", opts)

-- search but don't move forward
vim.keymap.set('n', '*', "*<c-o>", opts)

-- search middle of screen
vim.keymap.set('n', 'n', "nzzzv", opts)
vim.keymap.set('n', 'N', "Nzzzv", opts)

-- Turn off ex
vim.keymap.set('n', 'Q', "<nop>", opts)

-- Vertical split
vim.keymap.set('n', '<c-\\>', ":vs<cr>", opts)
