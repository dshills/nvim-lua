vim.g.mapleader = ' '

-- w.listchars = 'tab:⇨|,nbsp:␣,trail:‗,extends:>,precedes:<' --eol:↵, tab:|⇆⇥_, tab:‗‗,tab:⇨|
vim.opt.listchars = { tab = '  ', nbsp = '␣', trail = '‗', extends = '>', precedes = '<', eol = ' ' }

local o = vim.o -- Global
-- o.scrolloff         = 8; view movements: z+b|z|t, <C>+y|e (one line), ud (halfpage), bf (page, cursor to last line)
-- o.completeopt = 'menuone,noselect' -- Set in nvim-cmp
-- o.tm = 500
o.autoindent = true
o.bacground = 'dark'
o.backup = false
o.cindent = true
o.clipboard = 'unnamedplus' -- use system clipboard (broken in firefox)
o.cmdheight = 2
o.cursorcolumn = false
o.cursorline = true
o.errorbells = false
o.expandtab = false -- use tab char
o.guiicursor = 'a'
o.hidden = true
o.hlsearch = true --false
o.ignorecase = true
o.incsearch = true --highlight as searching
o.isfname = o.isfname .. ',@-@'
o.lazyredraw = true
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.shiftwidth = 2 -- vis mode num spaces
o.shortmess = o.shortmess .. 'c'
o.showbreak='↪'
o.showmode = false
o.signcolumn = 'yes'
o.smartab = true
o.smartcase = true --automatic lower except when upper chars
o.smartindent = true
o.softtabstop = 0
o.syntax = true
o.tabstop = 2 -- indent
o.termguicolors = true
o.undodir = os.getenv( "HOME" ) .. '/.config/nvim/undo'
o.undofile = true
o.updatetime = 50
o.wildmode = 'list:longest,full'
o.wrap = true

local w = vim.wo -- Window
-- w.colorcolumn = '80'
w.list = true
w.number = true
w.relativenumber = false
w.signcolumn = 'yes'
w.spell = false

local b = vim.bo -- Buffer
b.spelllang = 'en'
b.swapfile = false

-- Close on q
vim.api.nvim_create_autocmd(
	"FileType",
	{ pattern = { "help", "startuptime", "qf", "godoc", "fugitive" },
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
