vim.opt.number = true                           -- show line numbers
vim.opt.relativenumber = true                   -- show relative line numbers
vim.opt.autoindent = true                       -- Automatically guesses the indentation given the previous one
-- Start Tab Config
vim.opt.tabstop = 2                             -- number of spaces a tab counts for
vim.opt.softtabstop = 2                         -- number of spaces a <Tab> key press counts for
vim.opt.shiftwidth = 2                          -- size of an indentation
vim.opt.expandtab = true                        -- always use spaces instead of tab characters
-- End Tab Config
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.cursorcolumn = true                     -- highlight the current column
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.swapfile = false                        -- create a swapfile
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.fixeol = false                          -- do not insert a new line at the end of the file automatically
vim.opt.backup = false                          -- create a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.guifont = "monospace:h16"               -- the font used in graphical neovim applications
-- Start Smart Indent Config
vim.api.nvim_command("autocmd BufEnter *.go setlocal tabstop=8 softtabstop=8 shiftwidth=8 expandtab")
vim.api.nvim_command("autocmd BufEnter *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab")
vim.api.nvim_command("autocmd BufEnter Makefile setlocal tabstop=8 softtabstop=0 shiftwidth=8 noexpandtab")
vim.api.nvim_command("autocmd BufEnter *.sol setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab")
-- End Smart Intent Config
