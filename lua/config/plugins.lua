local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- lua utils (required for telescope)
Plug 'nvim-lua/plenary.nvim'

-- icons
Plug 'nvim-tree/nvim-web-devicons'

-- TMUX
Plug 'christoomey/vim-tmux-navigator'

-- lsp
Plug 'neovim/nvim-lspconfig'

-- autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'lukas-reineke/cmp-rg'
Plug 'petertriho/cmp-git'
Plug 'hrsh7th/nvim-cmp'

-- treesitter
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

-- Comment
Plug 'numToStr/Comment.nvim'

-- Go support
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'

-- grep
Plug 'jremmen/vim-ripgrep'

-- git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'lewis6991/gitsigns.nvim'

-- snippet
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

-- buffer
-- Using telescope
-- Plug 'bsdelf/bufferhint'

-- file manager
Plug 'nvim-tree/nvim-tree.lua'

-- Javascript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug('styled-components/vim-styled-components', { branch = 'main' })

-- Fuzzy find: find all the things
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' })
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

-- statusline
Plug 'nvim-lualine/lualine.nvim'

-- Autopairs
Plug 'windwp/nvim-autopairs'

-- colorscheme
Plug 'patstockwell/vim-monokai-tasty'
Plug 'ray-x/aurora'
Plug 'navarasu/onedark.nvim'
vim.call('plug#end')

-- Configure Plugins
require('config.comment')
require('config.go')
-- require('config.bufferhint')
require('config.lualine')
require('config.nvim-autopairs')
require('config.nvim-cmp')
require('config.gitsigns')
require('config.nvim-lspconfig')
require('config.nvim-tree')
require('config.nvim-treesitter')
require('config.nvim-telescope')
