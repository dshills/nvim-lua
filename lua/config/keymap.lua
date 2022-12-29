-- Set leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = { noremap=true, silent=true }

-- better experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- noh
vim.keymap.set('n', '<leader><cr>', ":noh<cr>", opts)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>a', builtin.find_files, opts)
vim.keymap.set('n', '<leader>b', builtin.buffers, opts)
vim.keymap.set('n', '<leader>g', builtin.grep_string, opts)
vim.keymap.set('n', '<leader>G', builtin.live_grep, opts)

vim.keymap.set('n', '<leader>ta', builtin.autocommands, opts)
vim.keymap.set('n', '<leader>tc', builtin.colorscheme, opts)
vim.keymap.set('n', '<leader>tg', builtin.git_files, opts)
vim.keymap.set('n', '<leader>th', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>tj', builtin.jumplist, opts)
vim.keymap.set('n', '<leader>tk', builtin.keymaps, opts)
vim.keymap.set('n', '<leader>to', builtin.vim_options, opts)
vim.keymap.set('n', '<leader>tr', builtin.registers, opts)
vim.keymap.set('n', '<leader>ts', builtin.spell_suggest, opts)
vim.keymap.set('n', '<leader>tt', builtin.treesitter, opts)

vim.keymap.set('n', '<leader>lci', builtin.lsp_incoming_calls, opts)
vim.keymap.set('n', '<leader>lco', builtin.lsp_outgoing_calls, opts)
vim.keymap.set('n', '<leader>ld', builtin.lsp_definitions, opts)
vim.keymap.set('n', '<leader>li', builtin.lsp_implementations, opts)
vim.keymap.set('n', '<leader>lr', builtin.lsp_references, opts)
vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, opts)
vim.keymap.set('n', '<leader>lt', builtin.lsp_type_definitions, opts)

-- Toggle buffer hint
-- vim.keymap.set('n', '<leader>b', ":call bufferhint#Popup()<cr>", opts)
-- vim.keymap.set('n', '<leader>\\', ":call bufferhint#LoadPrevious()<cr>", opts)

-- Toggle file mgr
vim.keymap.set('n', '<leader>f', ":NvimTreeToggle<cr>", opts)

-- ripgrep
-- vim.keymap.set('n', '<leader>g', ":Rg" , opts)
-- vim.keymap.set('n', '<leader>G', ":Rg <cword><cr>" , opts)

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

-- Default mapings or defined elsewhere

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

-- gitsigns map
-- map({'n', 'v'}, '<leader>hs', ':Gitsigns stage_hunk<CR>')
-- map({'n', 'v'}, '<leader>hr', ':Gitsigns reset_hunk<CR>')
-- map('n', '<leader>hS', gs.stage_buffer)
-- map('n', '<leader>hu', gs.undo_stage_hunk)
-- map('n', '<leader>hR', gs.reset_buffer)
-- map('n', '<leader>hp', gs.preview_hunk)
-- map('n', '<leader>hb', function() gs.blame_line{full=true} end)
-- map('n', '<leader>hB', gs.toggle_current_line_blame)
-- map('n', '<leader>hd', gs.diffthis)
-- map('n', '<leader>hD', function() gs.diffthis('~') end)
-- map('n', '<leader>hX', gs.toggle_deleted)
-- map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
		
-- Comment map
-- NORMAL mode
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
-- VISUAL mode
-- `gc` - Toggles the region using linewise comment
-- `gb` - Toggles the region using blockwise comment

-- Treesitter
-- init_selection = '<c-space>',
-- node_incremental = '<c-space>',
-- scope_incremental = '<c-s>',
-- node_decremental = '<c-backspace>',
-- textobjects
-- ['aa'] = '@parameter.outer',
-- ['ia'] = '@parameter.inner',
-- ['af'] = '@function.outer',
-- ['if'] = '@function.inner',
-- ['ac'] = '@class.outer',
-- ['ic'] = '@class.inner',
-- goto_next_start = {
-- [']m'] = '@function.outer',
-- [']]'] = '@class.outer',
-- },
-- goto_next_end = {
-- [']M'] = '@function.outer',
-- [']['] = '@class.outer',
-- },
-- goto_previous_start = {
-- ['[m'] = '@function.outer',
-- ['[['] = '@class.outer',
-- },
-- goto_previous_end = {
-- ['[M'] = '@function.outer',
-- ['[]'] = '@class.outer',
-- },
