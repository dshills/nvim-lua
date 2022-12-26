
-- lsp keys
-- bufmap('n', '<leader>I', '<cmd>lua vim.lsp.buf.hover()<cr>')
-- Jump to the definition
-- bufmap('n', '<leader>F', '<cmd>lua vim.lsp.buf.definition()<cr>')
-- Lists all the implementations for the symbol under the cursor
-- bufmap('n', '<leader>N', '<cmd>lua vim.lsp.buf.implementation()<cr>')
-- Lists all the references 
-- bufmap('n', '<leader>z', '<cmd>lua vim.lsp.buf.references()<cr>')
-- Renames all references to the symbol under the cursor
--bufmap('n', '<leader>R', '<cmd>lua vim.lsp.buf.rename()<cr>')
		
local opts = { noremap=true, silent=true }
-- noh
vim.keymap.set('n', '<leader><cr>', ":noh<cr>", opts)

-- fuzzy find
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>a', builtin.find_files, opts)
vim.keymap.set('n', '<leader>b', builtin.buffers, opts)
vim.keymap.set('n', '<leader>tc', builtin.colorscheme, opts)
vim.keymap.set('n', '<leader>tg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>th', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>tk', builtin.keymaps, opts)
vim.keymap.set('n', '<leader>to', builtin.vim_options, opts)
vim.keymap.set('n', '<leader>tj', builtin.jumplist, opts)
vim.keymap.set('n', '<leader>tr', builtin.registers, opts)
vim.keymap.set('n', '<leader>ts', builtin.spell_suggest, opts)

-- Toggle buffer hint
-- vim.keymap.set('n', '<leader>b', ":call bufferhint#Popup()<cr>", opts)
-- vim.keymap.set('n', '<leader>\\', ":call bufferhint#LoadPrevious()<cr>", opts)

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