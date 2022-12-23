vim.g.mapleader = ' '

vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.backup = false
vim.opt.cindent = true
vim.opt.clipboard = 'unnamedplus' -- use system clipboard (broken in firefox)
vim.opt.cmdheight = 2
vim.opt.cursorcolumn = false
vim.opt.cursorline = true
vim.opt.errorbells = false
vim.opt.expandtab = false -- use tab char
vim.opt.guicursor = ""
vim.opt.hidden = true
vim.opt.hlsearch = true 
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.isfname:append("@-@")
vim.opt.lazyredraw = true
vim.opt.list = true
vim.opt.listchars = { tab = '  ', nbsp = '␣', trail = '‗', extends = '>', precedes = '<', eol = ' ' }
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.shiftwidth = 2 -- vis mode num spaces
vim.opt.showbreak='↪'
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true --automatic lower except when upper chars
vim.opt.smartindent = true
vim.opt.softtabstop = 0
vim.opt.spell = false
vim.opt.swapfile = false
vim.opt.tabstop = 2 -- indent
vim.opt.termguicolors = true
vim.opt.undodir = os.getenv( "HOME" ) .. '/.config/nvim/undo'
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.wildmode = 'list:longest,full'
vim.opt.wrap = true

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
