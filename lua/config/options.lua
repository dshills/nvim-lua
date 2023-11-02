-- Disable netrw at the very start of your init.lua (nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

local opt = vim.opt

-- files
opt.backup = false
opt.swapfile = false
opt.undodir = os.getenv( "HOME" ) .. '/.config/nvim/undo'
opt.undofile = true
opt.isfname:append("@-@")

-- line numbers
opt.number = true
opt.relativenumber = false

-- tabs
opt.expandtab = false -- use tab char
opt.tabstop = 2 -- indent
opt.shiftwidth = 2 -- vis mode num spaces
opt.smartindent = true
opt.autoindent = true
-- opt.cindent = true

-- search
opt.ignorecase = true
opt.smartcase = true --automatic lower except when upper chars
opt.incsearch = true
opt.hlsearch = true 

-- cursor 
opt.cursorcolumn = false
opt.cursorline = true
opt.guicursor = ""

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cmdheight = 2
opt.listchars = { tab = '  ', nbsp = '␣', trail = '‗', extends = '>', precedes = '<', eol = ' ' }
opt.list = true
opt.showmode = false
opt.lazyredraw = true
opt.updatetime = 50

-- line wrapping
opt.wrap = true
opt.showbreak='↪'


-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- word
opt.iskeyword:append("-")

-- buffers
opt.hidden = true

-- spell
opt.spell = false

-- mouse
opt.mouse = 'a'

-- completion
--opt.wildmode = 'list:longest,full'

-- Close on q
vim.api.nvim_create_autocmd(
	"FileType",
	{ pattern = { "help", "startuptime", "qf", "godoc", "fugitive", "fugitiveblame" },
	command = [[nnoremap <buffer> <silent> q :close<cr>]] }
)

vim.cmd(':command! WQ wq')
vim.cmd(':command! Wq wq')
vim.cmd(':command! W w')
vim.cmd(':command! Q q')

-- Return to last edit position when opening files (You want this!)
-- autocmd BufReadPost *
--		 \ if line("'\"") > 0 && line("'\"") <= line("$") |
--		 \   exe "normal! g`\"" |
--		 \ endif
vim.api.nvim_create_autocmd(
    {'BufReadPost'},{
    pattern = {'*'},
    callback = function()
        local ft = vim.opt_local.filetype:get()
        -- don't apply to git messages
        if (ft:match('commit') or ft:match('rebase')) then
            return
        end
        -- get position of last saved edit
        local markpos = vim.api.nvim_buf_get_mark(0,'"')
        local line = markpos[1]
        local col = markpos[2]
        -- if in range, go there
        if (line > 1) and (line <= vim.api.nvim_buf_line_count(0)) then
            vim.api.nvim_win_set_cursor(0,{line,col})
        end
    end
})
